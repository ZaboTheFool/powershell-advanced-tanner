function Get-ResourceGroupSummary {
    
    $ResourceGroups = Get-AzResourceGroup
    
    foreach ($ResourceGroup in $resourceGroups) {
        [PSCustomObject]@{
            ResourceGroupName = $ResourceGroup.ResourceGroupName
            Location          = $ResourceGroup.Location
            Tags              = $ResourceGroup.Tags
        }
    }
}