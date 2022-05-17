pipeline {
    agent any
    stages {
        stage('prepare') {
             agent {
                 docker {
                 image 'maven'
                 args '-v /var/run/docker.sock:/var/run/docker.sock'
                 }
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
               docker {image 'keyopstech/docker-compose'}
            }
            steps {
               echo 'Deploying....'
               sh 'pwd'
               sh './build-project.sh'
            }
        }
    }
}