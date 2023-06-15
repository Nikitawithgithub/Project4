pipeline {
    agent { label 'slave1' }
    stages {
        stage('checkout') {
            steps {
                sh 'git checkout Testbranch'
                   }           
            }
           stage('runs a file') {
           steps {
               sh 'chmod 777 TestingwithPR'
               sh './TestingwithPR'
           }
           }
}
}
