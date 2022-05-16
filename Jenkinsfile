pipeline {
    agent none
    stages {
        stage('prepare') {
            steps {
            agent {
               docker { image 'maven' }
                  }
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
            agent {
                 docker { image 'docker-compose' }
                  }
                echo 'Deploying....'
                sh 'build-project.sh'
            }
        }
    }
}