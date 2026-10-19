
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run file.py') {
            steps {
                bat '"C:\\Users\\priya\\AppData\\Local\\Programs\\Python\\Python310\\python.exe" file.py'
            }
        }

        stage('Run file1.py') {
            steps {
                bat '"C:\\Users\\priya\\AppData\\Local\\Programs\\Python\\Python310\\python.exe" file1.py'
            }
        }

        stage('Run file2.py') {
            steps {
                bat '"C:\\Users\\priya\\AppData\\Local\\Programs\\Python\\Python310\\python.exe" file2.py'
            }
        }
    }
}

