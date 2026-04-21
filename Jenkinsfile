pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking project files...'
                bat 'dir "project 1"' 
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker Image...'
                // We point Docker to use the current folder for the Dockerfile
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Remove Old Container') {
            steps {
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
            }
        }
        stage('Deploy to Port 5000') {
            steps {
                echo 'Starting your specific project on port 5000...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'SUCCESS! Open http://localhost:5000/project%201/anuragindex2.html'
        }
    }
}
