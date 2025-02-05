pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    }
                }
            }
        }

        stage('Tag and Push Docker Image') {
            steps {
                script {
                    sh 'docker tag test Subiksha17/Guvi_Task2:latest'
                    sh 'docker push Subiksha17/Guvi_Task2:latest'
                }
            }
        }
    }
}
