<#
.SYNOPSIS
This script creates a new Azure resource group in the Central US region.

.DESCRIPTION
This script prompts the user for a resource group name and creates a new Azure resource group in the Central US.

.EXAMPLE
.\create-resourcegroup.ps1 -ResourceGroupName "TestRG"
#>


param(
    [Parameter(Mandatory)]
    [ValidateLength(1, 90)]
    [string]$ResourceGroupName
)

$TranscriptPath = ".\resourcegroup-transcript.txt"

Start-Transcript -Path $TranscriptPath


try {
New-AzResourceGroup -Name $ResourceGroupName -Location centralus -ErrorAction Stop
}
catch {
    Write-Host "Failed to create the resource group."
    Write-Host $_.Exception.Message

}
finally {
    Write-Host "Script execution completed."
    Stop-Transcript
}