# Lambda function to stop all instances
# Import-Module AWS.Tools.EC2
# Import-Module AWSLambdaPSCore

# Need this function to run in AWS Lambda PowerShell Mode
#Requires -Modules @{ModuleName='AWSPowerShell.NetCore';ModuleVersion='3.3.618.0'}
# Gather the list of instances
Write-Host "**** GETTING LIST OF INSTANCES ********"
( Get-EC2Instance -Region us-east-1 ).Instances | ForEach-Object {
    $id = $_.InstanceId
    Write-Host "Instance to turn off is --> " $id

    Write-Host "********* TURNING OFF INSTANCE " $id " NOW"
    Stop-EC2Instance -InstanceId $id -Verbose

    Write-Host " Instance ID " $id " state is now" ( Get-EC2InstanceStatus -InstanceId $id -IncludeAllInstance $true ).InstanceState.Name
 
}