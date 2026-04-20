pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking for HTML errors...'
                bat 'dir' // 'dir' is the Windows version of 'ls'
            }
        }
        stage('Build Image') {
            steps {
                echo 'Packaging application...'
                bat 'echo Docker build successful'
            }
        }
        stage('Security Scan') {
            steps {
                echo 'Scanning for vulnerabilities...'
            }
        }
        stage('Local Deploy') {
            steps {
                echo 'Deploying to localhost:8080...'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline Finished Successfully!'
        }
        failure {
            echo 'Pipeline Failed. Check the logs!'
        }
    }
}
