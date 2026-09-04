pipeline {
    agent { label 'agent' }

    stages {

        stage('Clone Source Code') {
            steps {
                echo '===== Cloning CartForge Source Code ====='
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo '===== Installing Dependencies ====='
                sh 'npm ci'
            }
        }

        stage('Build Application') {
            steps {
                echo '===== Building CartForge Application ====='
                sh 'echo "CartForge build completed successfully."'
            }
        }

        stage('Run Tests') {
            steps {
                echo '===== Running CartForge Tests ====='
                sh 'npm test'
            }
        }

        stage('Package Application') {
            steps {
                echo '===== Packaging CartForge Application ====='
                sh 'tar -czf cartforge-application.tar.gz index.js package.json package-lock.json tests'
            }
        }

        stage('Deliver Artifact') {
            steps {
                echo '===== Delivering CartForge Artifact ====='
                archiveArtifacts artifacts: 'cartforge-application.tar.gz', fingerprint: true
            }
        }
    }

    post {
        success {
            echo '===== CARTFORGE PIPELINE COMPLETED SUCCESSFULLY ====='
        }

        failure {
            echo '===== CARTFORGE PIPELINE FAILED ====='
        }

        always {
            echo '===== CartForge Pipeline Finished ====='
        }
    }
}
