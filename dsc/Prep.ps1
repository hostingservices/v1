configuration PrepSFCI
{
    param
    (
        [Parameter(Mandatory)]
        [String]$DomainName,

        [Parameter(Mandatory)]
        [System.Management.Automation.PSCredential]$AdminCreds,

        [Parameter(Mandatory)]
        [System.Management.Automation.PSCredential]$svcCreds,
        
        [String]$DomainNetbiosName = (Get-NetBIOSName -DomainName $DomainName),

        [Int]$RetryCount = 20,
        [Int]$RetryIntervalSec = 30
    )

    Import-DscResource -ModuleName xComputerManagement, xActiveDirectory, xSQLServer, xPendingReboot, xNetworking
    mkdir c:\testdir

    }