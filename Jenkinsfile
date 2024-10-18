pipeline {
    agent any
    environment {
        GIT_REPO= "${https://github.com/soundiata12/Fullpipeline-project.git}"
    }
    stages {
        stage('Checkout') {
            steps {
                git url: "$GIT_REPO", branch: 'main'
            }
        }
    }
}