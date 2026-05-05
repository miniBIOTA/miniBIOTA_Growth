$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$brainRoot = "M:\miniBIOTA\miniBIOTA_Brain"

Write-Host "miniBIOTA Growth Codex closeout"
Write-Host "Repo: $repoRoot"

Push-Location $repoRoot
Write-Host ""
Write-Host "Growth repo status:"
git status --short --branch
Pop-Location

if (Test-Path "$brainRoot\7. Partners & Sales\growth_brief.md") {
    Write-Host "Growth brief exists: $brainRoot\7. Partners & Sales\growth_brief.md"
} else {
    Write-Host "Growth brief missing at expected path."
}

Write-Host ""
Write-Host "Closeout reminder:"
Write-Host "- Read changed docs end to end."
Write-Host "- Run git diff --name-only and git status --short --branch."
Write-Host "- Update Brain growth_brief.md only when manager-facing Growth state changed and the user has not forbidden it."
Write-Host "- Treat commits and pushes as reminders for complete work units, not automatic requirements."
Write-Host "- Confirm no Supabase, structured records, app behavior, public site behavior, Brain mirrored docs, or Brain growth brief changed unless approved."
Write-Host "- Confirm no commitments, public claims, prices, campaign promises, reward promises, sponsor obligations, partner offers, legal commitments, financial commitments, launch dates, roadmap commitments, sales commitments, partner commitments, approved strategy, active projects, tasks, or revenue commitments were created unless explicitly approved."
