pipeline {
    agent any

    stages {
        stage('Clone Project') {
            steps {
                // Add the withCredentials block with the credentials ID
            withCredentials([string(credentialsId: 'Git_ID', variable: 'GIT_CREDENTIALS')]) {
                git url: 'https://github.com/Git-Gouse123/DemoCPPCode.git',
                    credentialsId: 'Git_ID'
            }
			}
        }

        stage('Pre-build checks') {
            steps {
                // Perform any pre-build checks or validations
                sh 'demo-pre-build-script.sh'
            }
        }

        stage('Build') {
            steps {
                // Build your project using CMake
                sh 'cmake -B build'
                sh 'cmake --build build'
            }
        }

        stage('Compiler Warnings') {
            steps {
                // Install warnings-ng plugin
                sh 'warnings-ng-install-script.sh'

                // Generate compiler warnings report
                sh 'warnings-ng-script.sh'
            }
        }

        stage('Static code analysis') {
            steps {
                // Run SonarQube analysis with GATE conditions
                sh 'sonarqube-analysis-script.sh'
            }
        }

        stage('Unit Test case executions') {
            steps {
                // Execute unit tests using Google Test
                sh 'googletest-script.sh'
            }
        }

        stage('Code Coverage Report') {
            steps {
                // Generate code coverage report using GCov
                sh 'gcov-script.sh'
            }
        }
    }

    post {
        always {
            // Cleanup steps or post-build actions
            deleteDir()
        }
    }
}
