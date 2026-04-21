pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking anuragindex2.html...'
                bat 'dir anuragindex2.html' 
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Image...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
            }
        }
        stage('Docker Deploy') {
            steps {
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    
    post {
        success {
            echo 'SUCCESS! Your specific page is now live at http://localhost:5000'
        }
    }
}
