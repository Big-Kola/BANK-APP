pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Big-Kola/BANK-APP.git',
                    credentialsId: 'okaybankcreds'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t bank-app .'
                }
            }
        }

        stage('Stop Old Container') {
            steps {
                script {
                    sh '''
                    if [ $(docker ps -q -f name=bank-container) ]; then
                        docker stop bank-container
                        docker rm bank-container
                    fi
                    '''
                }
            }
        }

        stage('Run New Container') {
            steps {
                script {
                    sh 'docker run -d -p 5000:5000 --name bank-container bank-app'
                }
            }
        }
    }
}
