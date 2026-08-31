# LM2 Lab

### Task 1 - Identify and correct script errors

### Original Command: Gwt-Process -Name explore

### Error Message: Get-Process: Cannot find a process with the name "explore". Verify the process name and call the cdlet again.

### Cause of error: The process name was entered incorectly.

### Corrected Command: Get-Process -name explorer

# Task 2 - Add debugging Output

### Example pf Verbose Output
### Verbose: Starting resource group creation
### Verbose: Creating resource group
### Verbose: Created resource group 'TestRG' in location 'Central US'

### Example of Debug Output
### Debug: Resourse group name: TestRG
### Debug: NewAzureResourceGroupCmdlet begin processing
### Debug: Resource group created successfully

### Observed Differences: Verbose output showed the main steps of the script and was easier to follow. Debug showed much more detailed information about the Azure module, authentication, and command processing. Debug would be more useful for troubleshooting a difficult problem, while verbose is better for showing the normal process of the script.

# Task 3 - Create your first pester test

### Test name: TestRG should exist

## Expected result: The test should confirm that the TestRG resource group exists in Azure.

### Actual result: The test passed successfully. Pester reported 1 test passed and 0 failed.