# LM7 Lab

## Task 1 - Examine a DSC Configuration

### Configuration Name: CompanyBaseline

### Node: localhost

### Resource 1: AutomationFolder creates the C:\Automation directory if it does not exist.

### Resource 2: ConfigFile creates C:\Automation\Config.txt containing "NWTC Standard Configuration".

### Resource Dependency: ConfigFile depends on AutomationFolder to make sure the directory exists first.

### MOF File: DSC\CompanyBaselineExample\localhost.mof

### Deployment Result: The configuration was applied successfully using Start-DscConfiguration.

### Test Result: Test-DscConfiguration returned True, and Get-DscConfiguration showed both resources.

## Task 2 - Create Your First DSC Configuration

### Configuration Name: TannerBaseline

### Node: localhost

### Resource: BaselineFolder creates the C:\CompanyBaseline directory if it does not exist.

### Script Location: DSC\lm7-dsc.ps1

## Task 3 - Generate and Review MOF Files

### MOF File Location: DSC\TannerBaseline\localhost.mof

### File Purpose: The MOF file contains the compiled configuration that DSC uses to apply the desired settings.

### Information Observed: The file contained the TannerBaseline configuration and the BaselineFolder resource with C:\CompanyBaseline as its destination.

### Compilation Result: The configuration compiled successfully and generated the localhost.mof file.

## Task 4 - Apply the Configuration

### Configuration Applied: TannerBaseline

### Command Used: Start-DscConfiguration -Path .\DSC\TannerBaseline -Wait -Verbose

### Deployment Result: The configuration applied successfully and created the C:\CompanyBaseline directory.

## Task 5 - Validate Compliance

### Test Command: Test-DscConfiguration

### Test Result: True

### Configuration Command: Get-DscConfiguration

### Configuration Result: Displayed TannerBaseline and the BaselineFolder resource with C:\CompanyBaseline as its destination.

### Compliance Result: The system matched the desired configuration.

## Task 6 - Expand Your Baseline

### Second Resource: BaselineFile creates C:\CompanyBaseline\Baseline.txt containing "NWTC DSC Baseline Configuration".

### Resource Dependency: BaselineFile depends on BaselineFolder so the directory exists before the file is created.

### Compilation Result: The updated configuration compiled successfully and regenerated the localhost.mof file.

### Deployment Result: The updated configuration was applied successfully with both resources.

### Test Result: Test-DscConfiguration returned True.

### File Verification: Get-Content confirmed that Baseline.txt contained "NWTC DSC Baseline Configuration".