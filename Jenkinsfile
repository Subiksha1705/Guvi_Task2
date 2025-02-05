pipeline {
    agent any

    environment {
        // Docker Hub credentials (make sure to store them securely)
        DOCKER_USERNAME = 'Subiksha17'
        DOCKER_PASSWORD = 's1705sha17' // It's better to use Jenkins credentials for security
    }

    stages {
        stage('Build Docker Image') {
            steps {
                // Grant executable permissions to the build script
                sh 'chmod +x build.sh'

                // Build the Docker image using the build script
                sh './build.sh'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                // Log in to Docker Hub
                script {
                    sh "echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin"
                }
            }
        }

        stage('Tag and Push Docker Image') {
            steps {
                // Tag the image for Docker Hub
                sh 'docker tag test Subiksha17/Guvi_Task2'

                // Push the image to Docker Hub
                sh 'docker push Subiksha17/Guvi_Task2'
            }
        }
    }
}
