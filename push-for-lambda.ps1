Install-Module -Name AWSLambdaPSCore -Force
Import-Module AWSLambdaPSCore
Write-Host "starting lambda function --> stop-instances"
Publish-AWSPowerShellLambda -ScriptPath ./stop-instances-lambda/stop-instances.ps1 -Name stop-instances -Region us-east-1
