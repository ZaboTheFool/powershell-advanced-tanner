# Create Resource Group Comparison

# Three Improvements

### Documentation: I added comment-based help to explain the purpose of the script and provide an example of how to use it. This makes it easier for others to understand.

### Parameter Validation: I replaced Read-Host with a mandatory ResourceGroupName parameter and added ValidateLenght. This prevents invalid input from continuing through the script.

### Error Handling and Logging: I added try, catch, and finally blocks to handle errors and added a transcript to record what happens when the script runs. This makes it easier ti identify and troubleshoot.

# Improvement that added the most value: I think error handling and logging added the most value because they provide useful information when the script fails and make troubleshooting easier.

# Easiest Improvement to implement: The easiest improvement to implement was the comment-based help because it only required adding ocumentation that explains what the script does and how to use it.

# New-TestResourceGroup Advanced Function

### New-TestResourceGroup creates an Azure resource group in the Central US region.

### The function supports parameter validation, custom tags, pipeline input, structured output, and WhatIf and Confirm.

### ResourceGroupName is required and can be passed directly or through the pipeline. Tags are optional and default to Department = IT and Environment = Test.

### The function returns structured output showing the resource group name, location, creation status, tags, and timestamp.

# LM4 Enterprise Function Improvements

### Parameter Sets: New-TestResourceGroup now supports both ResourceGroupName and ProjectID parameters.

### ProjectID Naming: Project IDs are automatically converted into resource group names using the RG- naming convention.

### Pipeline Processing: The function uses Begin, Process, and End blocks to support processing multiple ProjectIDs through the pipeline.

### User Feedback: Verbose output provides information about validation, resource group creation, and completion.

## Bulk Processing: Multiple ProjectIDs can be read from a text file and processed through the pipeline.

### Execution Statistics: The function tracks the total number of requests processed, resources created, resources skipped, and errors encountered.

# LM5 Module Conversion

### Module: New-TestResourceGroup has been packaged into the NWTC.ResourceGroups PowerShell module

### Public Function: New-TestResourceGroup is stored in the Public folder and is exported for users

### Private Function: Write-ModuleLog is stored in the Private folder and is used internally for logging

### Module Logging: Resource group activity is now recorded in log files stored in the Logs folder

### Module Manifest: NWTC.ResourceGroups includes a module manifest with version and module information

# NWTC.ResourceGroups Module

### The New-TestResourceGroup Function has been packaged into the NWTC.ResourceGroups PowerShell module

### The module includes public and private functions, logging, a module manifest, documentation, andsupport for future expansion