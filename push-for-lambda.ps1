#Requires -Modules @{ModuleName='AWSPowerShell.NetCore';ModuleVersion='3.3.618.0'}
Write-Host "starting lambda function --> stop-instances"
Publish-AWSPowerShellLambda -ScriptPath ./stop-instances-lambda/stop-instances.ps1 -Name stop-instances -Region us-east-1
