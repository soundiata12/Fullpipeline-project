pipeline {
    agent any
    environment {
        GIT_REPO = "${https://github.com/soundiata12/Fullpipeline-project.git}"
    }
    stages {
        stage('Checkout') {
            steps {
                git url: "${https://github.com/soundiata12/Fullpipeline-project.git}", branch: 'main'
            }
        }
    }
}