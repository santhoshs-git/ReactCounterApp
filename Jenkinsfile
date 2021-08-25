pipeline { 
    environment { 
        registry = "santhoshshub/reactjs_counter_app" 
        registryCredential = 'dockerhub' 
        dockerImage = '' 
    }
    agent any 
    stages {
        stage('Checkout github code') { 
            steps { 
                git credentialsId: 'github', url: 'https://github.com/santhoshs-git/ReactCounterApp.git'
            }
        }

        stage('Build the code') {
            steps {
                script {
                dockerImage = sudo docker.build registry + ":$BUILD_NUMBER"
                }
            }
       }
    }
}