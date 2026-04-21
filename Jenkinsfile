pipeline {
    agent any

    stages {
        stage('Environment Check') {
            steps {
                echo 'Locating anuragindex2.html...'
                bat 'dir anuragindex2.html'
            }
        }
        stage('Build Image') {
            steps {
                echo 'Building Docker image with your custom page...'
                // Using the full path to docker.exe
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Cleanup & Deploy') {
            steps {
                echo 'Removing old container if it exists...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
                
                echo 'Starting new container on port 5000...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'SUCCESS! Check your work at http://localhost:5000'
        }
        failure {
            echo 'Build failed. Check the Console Output in Jenkins for details.'
        }
    }
}
