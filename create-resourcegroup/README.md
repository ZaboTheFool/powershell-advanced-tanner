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