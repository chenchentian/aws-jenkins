pipeline {
    agent any
    stages {
        stage('prepare') {
         agent {
                docker {
                image 'adoptopenjdk/maven-openjdk11'
                }
            }
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