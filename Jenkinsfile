pipeline {
    agent {
        // Use a specific Docker-enabled agent
        label 'docker'
    }

    environment {
        // Define the Docker image name with a tag if needed
        DOCKER_IMAGE = 'mypallavi:latest'
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
                    // Run the Docker container and execute Maven tests
                    docker.image(DOCKER_IMAGE).inside {
                        // Execute Maven test command
                        sh 'mvn clean test'
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

