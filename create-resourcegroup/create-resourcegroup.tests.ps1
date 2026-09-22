BeforeAll {
    Import-Module Az.Resources
    . "$PSScriptRoot\create-resourcegroup.ps1"
}

Describe "New-TestResourceGroup Tests" {

    It "Should have a ResourceGroupName parameter" {
        $Command = Get-Command New-TestResourceGroup
        $Command.Parameters.Keys | Should -Contain "ResourceGroupName"
    }

    It "Should have a ProjectID parameter" {
        $Command = Get-Command New-TestResourceGroup
        $Command.Parameters.Keys | Should -Contain "ProjectID"
    }

    It "Should support WhatIf" {
        $Command = Get-Command New-TestResourceGroup
        $Command.Parameters.Keys | Should -Contain "WhatIf"
    }

    It "Should accept ProjectID from the pipeline" {
        $Command = Get-Command New-TestResourceGroup
        $ProjectID = $Command.Parameters["ProjectID"]

        $ProjectID.Attributes.ValueFromPipeline | Should -Contain $true
    }
}