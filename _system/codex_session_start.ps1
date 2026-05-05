$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$brainRoot = "M:\miniBIOTA\miniBIOTA_Brain"

Write-Host "miniBIOTA Growth Codex startup"
Write-Host "Repo: $repoRoot"

if (Test-Path "$brainRoot\_system\agent_memory.md") {
    Write-Host "Brain memory: $brainRoot\_system\agent_memory.md"
} else {
    Write-Host "Brain memory not found at expected path: $brainRoot\_system\agent_memory.md"
}

if (Test-Path "$brainRoot\7. Partners & Sales\growth_brief.md") {
    Write-Host "Growth brief: $brainRoot\7. Partners & Sales\growth_brief.md"
} else {
    Write-Host "Growth brief not found yet at expected path."
}

if (Test-Path "$brainRoot\_system\minibiota_tools.py") {
    try {
        Push-Location $brainRoot
        python -c "import sys; sys.path.insert(0, r'_system'); import minibiota_tools as tools; print('Supabase tools import: ok')"
        Pop-Location
    } catch {
        Pop-Location
        Write-Host "Supabase tools import check failed: $($_.Exception.Message)"
    }
}

try {
    Push-Location $repoRoot
    git status --short --branch
    Pop-Location
} catch {
    Pop-Location
    Write-Host "Git status check failed: $($_.Exception.Message)"
}

Write-Host "Startup routing:"
Write-Host "1. Read AGENTS.md for hard Growth operating rules."
Write-Host "2. Read memory/00-index.md."
Write-Host "3. Load only the relevant memory files."
Write-Host "4. Use the matching skills/*/SKILL.md workflow."
Write-Host "5. Use docs/ only while migration is incomplete or when exact reference still lives there."
Write-Host "6. Use Brain growth_brief.md only when current strategy-level state matters."
Write-Host "7. Use Supabase only when current structured records matter and record work is approved."
Write-Host "Startup complete."
