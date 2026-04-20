pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code from GitHub...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building Docker Image locally...'
                // If you have Docker installed, you'd run: sh 'docker build -t my-app .'
                echo 'Build Complete.'
            }
        }
        stage('Test') {
            steps {
                echo 'Running local tests...'
                echo 'Testing Complete.'
            }
        }
    }
}
