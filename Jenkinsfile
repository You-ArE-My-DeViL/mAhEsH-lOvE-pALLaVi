pipeline {
    agent any

    environment {
        // Define environment variables if needed
        DOCKER_IMAGE = 'mypallavi'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/You-ArE-My-DeViL/mAhEsH-lOvE-pALLaVi.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Test Docker Image') {
            steps {
                script {
                    // Run the Docker container and execute tests
                    docker.image(DOCKER_IMAGE).inside {
                        sh 'mvn test' // Replace with your actual test command
                    }
                }
            }
        }
    }

    post {
        always {
            script {
                // Clean up Docker resources
                sh "docker rmi ${DOCKER_IMAGE}"
            }
        }
    }
}

