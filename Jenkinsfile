pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking files...'
                bat 'dir' 
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker Image using full path...'
                // This will now find the Dockerfile you just added
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Remove Old Container') {
            steps {
                echo 'Cleaning up old containers...'
                // Removes the container if it exists, exits safely if it doesn't
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
            }
        }
        stage('Deploy to Port 5000') {
            steps {
                echo 'Starting the container on port 5000...'
                // We map 5000 (local) to 80 (inside Nginx container)
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'SUCCESS! Your Nginx server is live at http://localhost:5000'
        }
        failure {
            echo 'Build Failed. Check the Console Output for Docker errors.'
        }
    }
}
