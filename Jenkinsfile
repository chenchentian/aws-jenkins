pipeline {
    agent none
    stages {
        stage('prepare') {
             agent {
                 docker { image 'maven'
                          alwaysPull true
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