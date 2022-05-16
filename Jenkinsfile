pipeline {
    agent {
        docker {
        image 'adoptopenjdk/maven-openjdk11'
        }
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