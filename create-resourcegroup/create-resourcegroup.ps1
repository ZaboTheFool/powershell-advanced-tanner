function New-TestResourceGroup {



<#
.SYNOPSIS
Creates Azure resource groups in the Central US region.

.DESCRIPTION
New-TestResourceGroup creates Azure resource groups using either a resource group name or a ProjectID. The function supports pipeline input, custom tags, verbose output, WhatIf and Confirm, structured output, and execution statistics.

.PARAMETER ResourceGroupName
Specifies the name of the resource group to create.

.PARAMETER ProjectID
Specifies a ProjectID. The function automatically creates the resource group name using the RG- naming convention.

.PARAMETER Tags
Specifies tags to apply to the resource group. The default tags are Department = IT and Environment = Test.

.EXAMPLE
New-TestResourceGroup -ResourceGroupName "TestRG"

.EXAMPLE
New-TestResourceGroup -ProjectID "1001"

.EXAMPLE
"1001","1002","1003" | New-TestResourceGroup

.EXAMPLE
Get-Content .\ResourceGroups.txt | New-TestResourceGroup -Verbose
#>

[CmdletBinding(SupportsShouldProcess=$true)]
param(
    [Parameter(
        Mandatory,
        ParameterSetName="ResourceGroupName"
    )]
    [ValidateLength(1, 90)]
    [string]$ResourceGroupName,

    [Parameter(
        Mandatory,
        ValueFromPipeline,
        ParameterSetName="ProjectID"
    )]
    [string]$ProjectID,

    [hashtable]$Tags = @{
        Department = "IT"
        Environment = "Test"
    }
)

begin {
    Write-Verbose "Starting resource group processing"

    $TotalProcessed = 0
    $Created = 0
    $Skipped = 0
    $Errors = 0
}

process {

    $TotalProcessed++

if ($PSCmdlet.ParameterSetName -eq "ProjectID") {
    $ResourceGroupName = "RG-$ProjectID"
}

Write-Verbose "Validation successful for resource group: $ResourceGroupName"

$TranscriptPath = "..\output\resourcegroup-transcript.txt"

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
    Write-Verbose "Attempting to Create resource group: $ResourceGroupName"

    if ($PSCmdlet.ShouldProcess(
        "Resource Group '$ResourceGroupName'",
        "Create"
    ))
    {
        New-AzResourceGroup -Name $ResourceGroupName -Location centralus -Tag $Tags -ErrorAction Stop

        $result.Status = "Created"
        $Created++

        Write-Verbose "Resource group created successfully: $ResourceGroupName"
    }
    else {
        $Skipped++
    }

    Write-Debug "Resource group created successfully"

}
catch {
    $Errors++
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

end {
    Write-Verbose "Resource group processing completed"
    Write-Host "  Execution Summary:"
    Write-Host "  Total processed: $TotalProcessed"
    Write-Host "  Created: $Created"
    Write-Host "  Skipped: $Skipped"
    Write-Host "  Errors: $Errors"
}

}