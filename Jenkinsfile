pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking project files...'
                // Using double quotes here is correct for Windows CMD
                bat 'dir "project 1"' 
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker Image...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Remove Old Container') {
            steps {
                // This ensures we don't get "Conflict" errors if the container exists
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
            }
        }
        stage('Deploy to Port 5000') {
            steps {
                echo 'Starting your container on http://localhost:5000...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'PIPELINE SUCCESSFUL!'
            echo 'Your site is now live at http://localhost:5000'
        }
    }
}
