[CmdletBinding()]
param(
    [switch]$RequireTag
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$versionPath = Join-Path $repoRoot 'VERSION'
$manifestPath = Join-Path $repoRoot 'plugin.json'
$changelogPath = Join-Path $repoRoot 'CHANGELOG.md'

foreach ($path in @($versionPath, $manifestPath, $changelogPath)) {
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "Required version file is missing: $path"
    }
}

$version = (Get-Content -Raw -LiteralPath $versionPath).Trim()
if ($version -notmatch '^\d+\.\d+\.\d+$') {
    throw "VERSION must be a semantic version such as 0.2.0; got: $version"
}

$manifest = Get-Content -Raw -LiteralPath $manifestPath | ConvertFrom-Json
if ($manifest.name -ne 'evaluation-expert') {
    throw "Unexpected plugin name in plugin.json: $($manifest.name)"
}
if ($manifest.version -ne $version) {
    throw "Version mismatch: VERSION=$version; plugin.json=$($manifest.version)"
}

$changelog = Get-Content -Raw -LiteralPath $changelogPath
$latest = [regex]::Match($changelog, '(?m)^##\s+(?:v)?(?<version>\d+\.\d+\.\d+)\b')
if (-not $latest.Success) {
    throw 'CHANGELOG.md has no release heading with a semantic version.'
}
if ($latest.Groups['version'].Value -ne $version) {
    throw "Version mismatch: VERSION=$version; latest CHANGELOG heading=$($latest.Groups['version'].Value)"
}

Write-Output "VERSION, plugin.json, and latest CHANGELOG heading agree: $version"

$gitCommand = Get-Command git -ErrorAction SilentlyContinue
if (-not $gitCommand) {
    if ($RequireTag) { throw 'Git is required when -RequireTag is used.' }
    Write-Output 'Git tag check skipped: git is unavailable.'
    exit 0
}

$gitRoot = & git -C $repoRoot rev-parse --show-toplevel 2>$null
if ($LASTEXITCODE -ne 0) {
    if ($RequireTag) { throw 'Git tag check failed: this directory is not a Git checkout.' }
    Write-Output 'Git tag check skipped: this directory is not a Git checkout.'
    exit 0
}

$tag = "v$version"
$tagCommit = & git -C $repoRoot rev-parse --verify "refs/tags/$tag^{commit}" 2>$null
if ($LASTEXITCODE -ne 0) {
    if ($RequireTag) { throw "Required release tag is missing: $tag" }
    Write-Output "Release tag not present (optional before release): $tag"
    exit 0
}

$tagCommit = $tagCommit.Trim()
$head = (& git -C $repoRoot rev-parse HEAD).Trim()
Write-Output "Release tag found: $tag -> $tagCommit"
if ($RequireTag -and $tagCommit -ne $head) {
    throw "Tag $tag does not point at HEAD. Check the release checkout before publishing."
}
if ($RequireTag) {
    Write-Output "Required release tag matches HEAD: $tag"
}
