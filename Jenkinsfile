
  pipeline {
    
     environment {
    imagename = "srinu/petclinics"
    registryCredential = 'mycred'
    dockerImage = ''
  }
    agent any
    
    stages {
      
    stage 'checkout'{
      steps {
 git branch: 'main', url: 'https://https://github.com/srinurampam/ECR.git'
    }
    }
      
      stage 'Docker build'{
        steps {
  docker.build('myrepo')
      }
      }
      
      stage 'Docker push'{
        steps {
 docker.withRegistry('https://360348352476.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:mycred') {
    docker.image('myrepo').push('latest')
 }
        } }
    }
  }
 

