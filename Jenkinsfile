
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('CI - Run Python Files') {
            steps {
                bat '"C:\\Users\\priya\\AppData\\Local\\Programs\\Python\\Python310\\python.exe" file.py'
                bat '"C:\\Users\\priya\\AppData\\Local\\Programs\\Python\\Python310\\python.exe" file1.py'
                bat '"C:\\Users\\priya\\AppData\\Local\\Programs\\Python\\Python310\\python.exe" file2.py'
            }
        }

        stage('CI - Build Docker Image') {
            steps {
                bat 'docker build -t agile-python:1.0 .'
            }
        }

        stage('CD - Deploy Container') {
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

