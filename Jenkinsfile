pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    }
}
