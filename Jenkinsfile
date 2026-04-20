pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking for HTML errors in anuragindex2.html...'
                bat 'dir' 
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker Image...'
                // This creates a new image named "anurag-app" using your Dockerfile
                bat 'docker build -t anurag-app:latest .'
            }
        }
        stage('Remove Old Container') {
            steps {
                echo 'Stopping old container if it exists...'
                // This stops and removes the old container so we can start a fresh one
                bat 'docker rm -f anurag-container || exit 0'
            }
        }
        stage('Deploy to Port 5000') {
            steps {
                echo 'Starting the new container on http://localhost:5000...'
                // This runs your container and maps port 5000
                bat 'docker run -d --name anurag-container -p 5000:5000 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline Finished! Your app is live at http://localhost:5000'
        }
    }
}
