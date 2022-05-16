pipeline {
    agent none
    stages {
        stage('prepare') {
             agent {
                 docker { image 'maven' }
             }
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
            agent {
               docker {image 'docker-compose'}
            }
            steps {
               echo 'Deploying....'
               sh 'build-project.sh'
            }
        }
    }
}