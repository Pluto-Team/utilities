pipeline {

    agent any

    options {
        buildDiscarder(logRotator(daysToKeepStr: '5', numToKeepStr: '5'))
    }

    stages {
        stage('Publish Stop Instances') {
            steps {
                sh 'chmod +x push-for-lambda.ps1'
                sh 'pwsh push-for-lambda.ps1'
            }
        }
    }
}