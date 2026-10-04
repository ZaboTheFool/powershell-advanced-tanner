# Task 1 - Review Current Module Version

### Current Version: 1.0.0

### Author: Tanner Gueller

### Description: Test resource groups creation

## Exported Commands: New-TestResourceGroup

# Task 2 - Add a New Feature

### New Function: Get-ResourceGroupSummary

### Function Purpose: Displays a summary of Azure resource groups including the resource group name, location, and tags

### Module Test: Get-Command -Module NWTC.ResourceGroups displayed both New-TestResourceGroup and Get-ResourceGroupSummary

### Function Test: Get-ResourceGroupSummary successfully displayed the resource group name, location and tags for the Azure resource groups

### Test Result: The new function was successfully added to the module and worked as expected

# Task 3 - Update Module Version

### Previous Version: 1.0.0

### New Version: 1.1.0

### Version Type: Minor version update

### Reason: The module received a new Get-ResourceGroupSummary function without removing or breaking the existing functionality

### Verification: Test-ModuleManifest confirmed that the module version is 1.1.0

# Task 4 - Create a Changelog

### Changelog file: Created CHANGELOG.md in the Docs folder

### Version History: Documented versions 1.0.0 and 1.1.0

### Version 1.1.0 Changes: Added Get-ResourceGroupSummary and updated module testing and documentation

### Version 1.0.0: Documented the initial release of NWTC.ResourceGroups

# Task 5 - Create Release Notes

### Release Notes File: Created RELEASENOTES.md in the Docs folder

### New Features:Documented the new Get-ResourceGroupSummary function

### Bug Fixes: No major bug fixes were required for this release

### Upgrade Instructions: Documented how to update and reload the module

### Known Issues: No known issues at this time

# Task 6 - Validate the Upgrade

### Module Version: 1.1.0

### Exported Commands: Get-ResourceGroupSummary and New-TestResourceGroup

### Get-ResourceGroupSummary Test: Successfully displayed the resource group nmae, location, and tags for the Azureresource groups

### Test Result: Version 1.1.0 loaded successfuly and both module fundtions were available working as expected