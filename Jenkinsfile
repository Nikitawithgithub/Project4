pipeline {
    agent { label 'slave1' }
    stages {
        stage('checkout') {
            steps {
                sh 'git checkout Testbranch'
                   }           
            }
        stage('change permission') {
            steps {
                sh 'chmod 777 TestingwithPR'
            }
        }
           stage('runs a file') {
           steps {
                sh './TestingwithPR'
           }
                       }
               sh 'chmod 777 TestingwithPR'
               sh './TestingwithPR'
           }
           }
