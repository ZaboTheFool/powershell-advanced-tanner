function New-TestResourceGroup {



<#
.SYNOPSIS
This script creates a new Azure resource group in the Central US region.

.DESCRIPTION
This script prompts the user for a resource group name and creates a new Azure resource group in the Central US.

.EXAMPLE
.\create-resourcegroup.ps1 -ResourceGroupName "TestRG"
#>

[CmdletBinding(SupportsShouldProcess=$true)]
param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [ValidateLength(1, 90)]
    [string]$ResourceGroupName,

    [hashtable]$Tags = @{
        Department = "IT"
        Enviornment = "Test"
    }
)

$TranscriptPath = "..output\resourcegroup-transcript.txt"

Write-Verbose "Starting resource group creation"
Write-Debug "Resource group name: $ResourceGroupName"

Start-Transcript -Path $TranscriptPath

$result = [PSCustomObject]@{
    ResourceGroupName = $ResourceGroupName
    Location = "centralus"
    Status = "Not Created"
    Tags = $Tags
    Timestamp = Get-Date
}


try {
    Write-Verbose "Creating resource group"

    if ($PSCmdlet.ShouldProcess(
        "Resource Group '$ResourceGroupName'",
        "Create"
    ))
    {
    
    
        New-AzResourceGroup -Name $ResourceGroupName -Location centralus -Tag $Tags -ErrorAction Stop

        $result.Status = "Created"
    }

    Write-Debug "Resource group created successfully"

}
catch {
    Write-Host "Failed to create the resource group."
    Write-Host $_.Exception.Message
}
finally {
    Write-Verbose "Finalizing script execution"
    Write-Host "Script execution completed."
    Stop-Transcript
}

$result

}