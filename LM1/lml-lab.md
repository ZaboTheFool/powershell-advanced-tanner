# LM1 Lab

# Task 1 - Evaluate Existing Script Quality


$a = Read-Host "RG Name"
New-AzResourceGroup -Name $a -Location centralus



### Issue 1: The variable $a is not descriptive. Someone looking at the script would not immediately know what the variable is being used for. In an enterprise environment this could make the script harder for other admins to understand.

### Issue 2: The script uses Read-Host without validating the information entered by the user. This could allow invalid data to be entered and cause the script to fail.

### Issue 3: The script does not have any error handling. If creating the resource group fails, the script does not have a way to properly handle the error. This could make troubleshooting more difficult.



# Task 2 - Create Professional Documentation


### Purpose: The purpose of this script os to create a new Azure resource group in the Central US.

### Parameter: The resource group name is currentl;y collected from the user using Read-Host and stored in the $a variable.

### Sample Execution: .\create-resourcegroup.ps1


# Task 3 - Implement Parameter Validation

### Validation Method: I used ValidateLength to require the resource group name to be between 1 and 90 characters long.

### Valid Imput: TestRG

### Invalid Input: Empty string ""

### Testing Results: The valid imput passed the ValidateLength check and continued to the Azure command. The Azure command could not complete because my account did not hjave access. THe invalid empty string was rejected becasue it did not meet the minimum legnth requirement.


# Task 4 - Implement Structured Error Handling

### Error Generated: The Script attempted to create an Azure resource group without an active Azure connection.

### Error Message: Run Connect-AzAccount to login.

### Catch Block: The catch block handled the error by displaying a message that the resource group failed to be created and then displayed the error message.

### Finally Block: The Finally block ran after the error was handled and displayed "Script execution completed"


# Task 5 - Add Logging and Improve Readability

### Transcript File Location: C:\Users\student\powershell-advanced-tanner\LM1\resourcegroup-transcript.txt

### Example Transcript Entry: Failed to create the resource group

### Readability Improvements: I replaced the variable $a with a more descriptive variable $ResourceGroupName. I organized the script using consistent indentation and seperate sections for parameters, error handling, and logging.
