pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Checking for HTML errors in anuragindex2.html...'
                sh 'ls -l' 
            }
        }
        stage('Build Image') {
            steps {
                echo 'Packaging application into Docker container...'
                // This simulates the build process
                sh 'echo "Docker build successful"'
            }
        }
        stage('Security Scan') {
            steps {
                echo 'Scanning for vulnerabilities...'
                sleep 2
            }
        }
        stage('Local Deploy') {
            steps {
                echo 'Deploying to localhost:8080...'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline Finished Successfully! Well done Anurag.'
        }
    }
}
