# NWTC.ResourceGroups

### Module Purpose

NWTC.ResourceGroups is a PowerShell module used to create and manage test Azure resource groups.

### Features

The module supports creating resource groups using either a ResourceGroupName or ProjectID. It also supports pipeline input, multiple values, custom tags, verbose output, WhatIf and Confirm, execution statistics, and module logging.

### Installation

Copy the NWTC.ResourceGroups folder to the system where the module will be used.

Import the module with:

Import-Module .\NWTC.ResourceGroups.psm1

### Usage Examples

Create a resource group using a name:

New-TestResourceGroup -ResourceGroupName "TestRG"

Create a resource group using a ProjectID:

New-TestResourceGroup -ProjectID "1001"

Process multiple ProjectIDs:

"1001","1002","1003" | New-TestResourceGroup

### Version

Version 1.0.0