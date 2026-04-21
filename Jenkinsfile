pipeline {
    agent any

    stages {
        stage('Environment Check') {
            steps {
                echo 'Locating Coffee House files...'
                // Changed from anuragindex2.html to the new folder
                bat 'dir coffee-house'
            }
        }
        stage('Build Image') {
            steps {
                echo 'Building Docker image for Coffee House...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Cleanup & Deploy') {
            steps {
                echo 'Removing old container...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
                
                echo 'Starting Coffee House on port 5000...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'SUCCESS! Brew & Bean is live at http://localhost:5000'
        }
    }
}
