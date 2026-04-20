pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }
        stage('Build project') {
            steps {
                echo 'Building...'
                bat 'dir'  // Use 'bat' and 'dir' for Windows
            }
        }
        stage('Test application') {
            steps {
                echo 'Testing...'
                bat 'echo "Tests Passed!"'
            }
        }
        stage('Deploy application') {
            steps {
                echo 'Deploying...'
                bat 'echo "Deployed successfully!"'
            }
        }
    }
}
