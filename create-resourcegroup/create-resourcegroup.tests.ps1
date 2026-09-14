BeforeAll {
    Import-Module Az.Resources
}

Describe "Azure Resource Group Tests" {
    It "TestRG should exist" {
        $ResourceGroup = Get-AzResourceGroup -Name "TestRG"
        $ResourceGroup.ResourceGroupName | Should -Be "TestRG"
    }
}