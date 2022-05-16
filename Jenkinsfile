pipeline {
    agent {
            docker { image 'maven' }
        }
    stages {
        stage('prepare') {
            steps {
                echo 'Building..'
                sh 'mvn  install'
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
                sh 'docker pull docker-compose'
                sh 'build-project.sh'
            }
        }
    }
}