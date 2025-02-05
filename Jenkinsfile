pipeline {
    agent any

    environment {
        // Reference the credentials stored in Jenkins
        DOCKER_CREDENTIALS = credentials('docker-hub')  // 'docker-hub-creds' is the ID of your stored credentials
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
                // Log in to Docker Hub using the credentials
                script {
                    sh "echo ${DOCKER_CREDENTIALS_PASSWORD} | docker login -u ${DOCKER_CREDENTIALS_USERNAME} --password-stdin"
                }
            }
        }

        stage('Tag and Push Docker Image') {
            steps {
                // Tag the image for Docker Hub
                sh 'docker tag test Subiksha17/Guvi_Task2:latest'

                // Push the image to Docker Hub
                sh 'docker push Subiksha17/Guvi_Task2:latest'
            }
        }
    }
}
