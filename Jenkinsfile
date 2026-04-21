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
                // Pointing Jenkins directly to the Docker executable
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Remove Old Container') {
            steps {
                echo 'Cleaning up old containers...'
                // Using full path to remove any old container named anurag-container
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
            }
        }
        stage('Deploy to Port 5000') {
            steps {
                echo 'Starting the container on port 5000...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:5000 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'SUCCESS! Visit http://localhost:5000 to see your app.'
        }
        failure {
            echo 'Build Failed. Verify the Docker path in the Jenkinsfile matches your computer.'
        }
    }
}
