pipeline {
    agent any
    stages {
        stage('Publish Stop Instances') {
            steps {
                sh 'chmod +x push-for-lambda.ps1'
                sh 'pwsh push-for-lambda.ps1'
            }
        }
    }
}