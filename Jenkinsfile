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
                echo 'Building the project...'
                sh 'ls -ltr'
            }
        }
        stage('Test application') {
            steps {
                echo 'Testing the application...'
                sh 'echo "Tests Passed!"'
            }
        }
        stage('Deploy application') {
            steps {
                echo 'Deploying the application...'
                sh 'echo "Deployed successfully!"'
            }
        }
    }
}
