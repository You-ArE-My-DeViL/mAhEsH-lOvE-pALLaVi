pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git repository
                git 'https://github.com/You-ArE-My-DeViL/mAhEsH-lOvE-pALLaVi.git'
            }
        }
        stage('Build') {
            steps {
                // Build the Maven project
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                // Run tests using Maven
                sh 'mvn test'
            }
        }
    }

    post {
        always {
            // Clean up any temporary files or resources
            cleanWs()
        }
        success {
            // Actions to perform if the pipeline is successful
            echo 'Build and tests passed successfully!'
        }
        failure {
            // Actions to perform if the pipeline fails
            echo 'Build or tests failed!'
        }
    }
}

