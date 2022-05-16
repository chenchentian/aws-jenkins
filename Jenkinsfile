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
                agent {
                            docker { image 'docker-compose' }
                        }
                sh 'build-project.sh'
            }
        }
    }
}