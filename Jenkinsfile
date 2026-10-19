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
                bat 'py file.py'
            }
        }
        stage('Run file1.py') {
            steps {
                bat 'py file1.py'
            }
        }
        stage('Run file2.py') {
            steps {
                bat 'py file2.py'
            }
        }
    }
}
