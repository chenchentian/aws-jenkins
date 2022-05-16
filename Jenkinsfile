pipeline {
    agent {
            docker { image 'node:7-alpine' }
        }
    stages {
        stage('prepare') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}