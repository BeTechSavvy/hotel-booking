pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/BeTechSavvy/hotel-booking.git'
            }
        }
        stage('Sanity Check') {
            steps {
                bat 'dir'
                bat 'type booking.conf'
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t hotel-service:1.0 .'
            }
        }
    }
}