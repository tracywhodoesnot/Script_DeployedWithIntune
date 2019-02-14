﻿##################################################################################################
<#
.SYNOPSIS
Policy Definition template file for Intune to run with the Microsoft Intune custome profile
This policy setup OneDrive For Business with AutoConfigure and KFM 


.NOTES
    FileName:    IE EnterpriseMode RestrictIE.ps1
    Author:      Per Larsen
    Created:     14-02-2019
    Product:     Internet Explorer
    Version:     1.0
    
#>
###################################################################################################
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode"

#Send all sites not included in the Enterprise Mode Site List to Microsoft Edge.
$Name = "RestrictIE"
$value = "1"
IF((Test-Path -LiteralPath $registryPath) -ne $true) 
{  New-Item $registryPath -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath $registryPath -Name $Name -Value $value -PropertyType DWord -Force -ea SilentlyContinue;



  