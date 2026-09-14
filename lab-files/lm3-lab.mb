# LM3 Lab 

# Task 1 - Create Your First Advanced Function

### Function Name: New-TestResourceGroup

### Changes Made: Converted the existing resource group script into an advanced function and added CmdletBinding.

# Task 2 - Add Parameter Validation 

### Parameter Added: $Tags 

### Default Tags: Department = IT, Environment = Test

### Test Result: The LM3TestRG resource group was created successfully with the default tags.

### Custom Tags Test: The DevTest resource group was created successfully with Department = Dev and Environment = Development.

# Task 3 - Accept Pipeline Input

### Pipeline Test: "PipelineTestRG" | New-TestResourceGroup

### Test Result: PipelineTestRG was successfully passed into the function through the pipeline and the resource group was created.

# Task 4 - Add Structured Output 

### Output Type: PSCustomObject

### Output Properties: ResourceGroupName, Location, Status, Tags, and Timestamp

### Test Result: StructuredTestRG was created successfully and the function returned structured output with a status of Created.

# Task 5 - Add WhatIf Support 

### WhatIf Test: "WhatIfTestRG" | New-TestResourceGroup -WhatIf

### WhatIf Result: PowerShell showed what the function would do without creating the resource group. The returned status was Not Created.

### Confirm Test: "ConfirmTestRG" | New-TestResourceGroup -Confirm

### Confirm Result: After confirming the operation, ConfirmTestRG was created successfully and the returned status was Created.

# Task 6 - Complete Function Documentation

### Repository Organization: Renamed the folders to create-resourcegroup and lab-files and created an output folder for transcript files.

### Documentation: Organized the lab files, function, Pester test, README, and transcript output into their required folders.