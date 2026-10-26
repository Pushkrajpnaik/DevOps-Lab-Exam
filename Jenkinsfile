pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('HIPAA Compliance Lint') {
            steps {
                sh 'test -f hipaa.properties'
                sh 'grep -q "^AUDIT_LOGGING=ENABLED$" hipaa.properties'
                echo 'HIPAA configuration validated'
            }
        }

        stage('Docker Package') {
            steps {
                sh 'docker build -t ehr-portal:2.0 .'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
        always {
            echo 'Pipeline execution finished'
        }
    }
}
