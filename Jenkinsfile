pipeline {
    
  environment {
    registry = "hela98/flaskex-images2"
    registryCredential = 'docker_hub'
  
    DockerHub = credentials('docker_hub') 
  
    
  }
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Building image') {
      steps{
          
        sh "docker system prune"
        sh "docker-compose build"
        sh "docker-compose up -d"
      }
    }
    stage('Deploy Image') {
      steps{
            
            withCredentials([string(credentialsId:'docker_hub', variable: 'PASSWORD')]){
                sh "docker login -u hela98 -p ${PASSWORD}"
                sh "docker push hela98/flaskex-images2:latest"
            }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi -f $registry:latest"
      }
    }
    
  }
    
    
  }
    
