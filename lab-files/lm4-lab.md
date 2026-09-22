# LM4 Lab

# Task 1 - Elaluate Your Existing Function

### Strength 1: The function uses parameter validation to help prevent invalid input.

### Strength 2: The function suppoorts pipeline input, which makes it more flexible for automation.

### Strength 3: The function supports WhatIf and Confirm, which helps prevent accidental changes.

### Improvement 1: The Function currently only supports creating resource groups using a resource group name.

### Improvement 2: The function could handle multiple pipeline inputs more efficiently.

### Improvement 3: The function could provide more feedback and information while it is running.

# Task 2 - Add Parameter Sets

### Parameter Sets Added: ResourceGroupName and ProjectID

### ResourceGroupName Test: LM4NAMETest was creating successfully using the ResourceGroupName parameter.

### ProjectID Test: ProjectID 1001 was automatically converted to RG-1001 and the resource group was created successfully.

### Pipeline Input: ValueFromPipeline was moved to the ProjectID parameter.

# Task 3 - Implement Beging, Process, and End Blocks

### Begin Block: Added a Begin block to handle startup messages before processing begins.

### Process Block: Added a Process block sp each ProjectID passed through the pipeline is processed separtely.

### End Block: Added an End block to display a completion message after processing finishes.

### Pipeline Test: "2001","2002","2003" | New-TestResourceGroup

### Test Result" THe Function Successfully processed all three pipeline objects and created RG-2001, RG-2002, nd RG-2003.

# Task 4 - Improve User Feedback

### Verbose Output: Added verbose messages for function start, validation success, resource group creation attempts, successful creation, and completion.

### Verbose Test: New-TestResourceGroup -ProjectID "3001" -Verbose

### Test Result: RG-3001 was created successfully and the function displayed verbose messages throughout the process.

### What I learned: Verbose output provides more information about what the function is doing and can make troubleshooting easier.

# Task 5 - Process Multiple Resource Groups

### Input File: ResourceGroups.txt

### Objects Processed: 5

### Resources Successfully Created: 5

### Warnings Generated: None

### Test Command: Get-Content .\ResourceGroups.txt | New-TestResourceGroup

### Test Result: THe function successfully processed all five ProjectIDs and created RG-4001 through RG-4005.

# Task 6 - Add Execution Statistics

### Statistics Added: Total Processed, Created, and Errors.

### Test Input: "5001","5002","5003" | New-TestResourceGroup

### Total Processed: 3

### Created: 3

### Skipped: 0

### Errors: 0

### Test Result: The Function successfully tracked and displayed execution statistics after processing all three resource groups.

# Task 7 - Finalize the Function

### Documentation: Updated the function README, repository README, and comment-based help to document the LM4 improvements.

### Pester Tests: Updated the Pester tests to verify the ResourceGroupName parameter, ProjectID parameter, WhatIf support, and ProjectID pipeline support.

### Test Result: All 4 Pester tests passed successfully.