pipeline {
    agent any


parameters {
   string(
    name: 'REGION', 
    defaultValue: 'us-east-1', 
    description: 'Enter the region where you want to deploy'
)

string(
    name: 'BRANCH_NAME', 
    defaultValue: 'main', 
    description: 'Enter the branch name to deploy from'
)

choice(
    name: 'ENV_CHOICE', 
    choices: ['dev', 'staging', 'prod'], 
    description: 'Choose the environment for deployment'
)


    environment {
        DEPLOY_REGION = "${params.REGION}"
        GIT_BRANCH = "${params.BRANCH_NAME}"
        ENVIRONMENT = "${params.ENV_CHOICE}"
    }

    stages {
        stage('us-east-1') {
            steps {
                echo "Using region: ${DEPLOY_REGION}"
                sh "aws configure set region ${DEPLOY_REGION}"
            }
        }
        
        stage('Checkout main') {
            steps {
                echo "Checking out branch: ${GIT_BRANCH}"
            }
        }
        
        stage('Ade') {
            steps {
                echo "Using environment: ${ENVIRONMENT}"
                echo "Kossi, Adelina tried :)
            }
        }

        stage('Terraform Init and Plan') {
            steps {
                echo "Running Terraform in ${ENVIRONMENT} environment"
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform plan -var="region=${DEPLOY_REGION}" -var="environment=${ENVIRONMENT}"'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo "Applying Terraform configuration"
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo "Deployment to ${ENVIRONMENT} in region ${DEPLOY_REGION} was successful."
        }
        failure {
            echo "Deployment failed. Check logs for details."
        }
    }
}
