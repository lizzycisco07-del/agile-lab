
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Run Python Files') {
            steps {
                bat 'py file.py'
                bat 'py file1.py'
                bat 'py file2.py'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t agile-python:1.0 .'
            }
        }
        stage('Deploy Container') {
            steps {
                bat 'docker rm -f agile-python-app 2>nul || exit /b 0'
                bat 'docker run -d --name agile-python-app agile-python:1.0'
            }
        }
        stage('Verify Deployment') {
            steps {
                bat 'docker ps -a --filter name=agile-python-app'
                bat 'docker logs agile-python-app'
            }
        }
    }
}
