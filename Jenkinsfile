pipeline {
    agent any
    stages {
        stage('Environment Check') {
            steps {
                echo 'Locating Coffee House files...'
                bat 'dir coffee-house'
            }
        }
        stage('Deploy to XAMPP') {
            steps {
                echo 'Deploying to XAMPP htdocs...'
                // Create the folder in XAMPP if it doesn't exist
                bat 'if not exist "C:\\xampp\\htdocs\\coffee-house" mkdir "C:\\xampp\\htdocs\\coffee-house"'
                // Copy all files from your GitHub folder to XAMPP
                bat 'xcopy /s /y "coffee-house\\*" "C:\\xampp\\htdocs\\coffee-house\\"'
            }
        }
        stage('Build & Deploy Docker') {
            steps {
                echo 'Updating Docker container...'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" build -t anurag-app:latest .'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" rm -f anurag-container || exit 0'
                bat '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe" run -d --name anurag-container -p 5000:80 anurag-app:latest'
            }
        }
    }
    post {
        success {
            echo 'SUCCESS! Site is live on both XAMPP and Docker.'
        }
    }
}
