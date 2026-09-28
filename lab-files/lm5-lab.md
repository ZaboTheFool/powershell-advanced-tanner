# Task 1 - Create a Module Structure

### Module Name: NWTC.ResourceGroups

### Module Structure: Created Public, Private, Tests, Logs, and Docs folders

### Public Function: Copied New-TestResourceGroup.ps1 into the Public folder

### GitHub: Created and pushed the initial module structure

# Task 2 - Create a script Module

### Module File: NWTC.ResourceGroups.psm1

### Public Functions: Configured the module to automatically load PowerShell files from the Public folder

### Import Test: Import-Module .\NWTC.ResourceGroups.psm1

### Test Result: The module imported successfully without errors

# Task 3 - Create a Module Manifest

### Manifest File: Created NWTC.ResourceGroups.psd1

### Module Version: 1.0.0

### Author: Tanner Gueller

### Description: Test resource groups creation

### Test Result: The module manifest was created successfully

# Task 4 - Export Module Members

### Exported Function: New-TestResourceGroup

### Module Export: Configured Export-ModuleMember to export functions from the public folder

### Verification: Used Get-Command -Module NWTC.ResourceGroups to Verify the exported function

### Test Result: New-TestResourceGroup was successfully diusplayed as a public module command