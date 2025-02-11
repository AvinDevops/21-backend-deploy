pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time:30, unit:'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    parameters {
        string(name: 'appVersion', defaultValue: '1.0.0', description: 'What is the application version?')

    }
    environment {
        def appVersion = '' //variable declaration
        nexusUrl = 'nexus.avinexpense.online:8081'
    }
    stages {
         stage('print the version') {
            steps {
                script {
                    echo "application version: ${params.appVersion}"
                }            
            }
        }
        stage('Init') {
            steps {
                sh """
                    cd terraform 
                    terraform init
                """            
            }
        }
        stage('plan') {
            steps {
                sh """
                    pwd
                    cd terraform 
                    terraform plan -var="app_version=${params.appVersion}"
                """            
            }
        }        
    }
    post {
        always {
            echo 'I will always run.'
            deleteDir()
        }
        success {
            echo 'I will run only when pipeline is success'
        }
        failure {
            echo 'I will run only when pipeline is failure'
        }
    }
}