<#
.SYNOPSIS
Writes messages to a module log file.

.DESCRIPTION
Write-ModuleLog adds timestamped messages to a specified log file.

.PARAMETER Message
Specifies the message to write to the log.

.PARAMETER Level
Specifies the log level.

.PARAMETER LogFile
Specifies the path to the log file.
#>

function Write-ModuleLog {
    param(
        [Parameter(Mandatory)]
        [string]$Message,

        [string]$Level = "INFO",

        [Parameter(Mandatory)]
        [string]$LogFile
    )

    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$Timestamp [$Level] $Message" | Add-Content -Path $LogFile
}