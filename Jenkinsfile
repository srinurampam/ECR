pipeline {
  stage 'clone'
  git 'https://github.com/srinurampam/ECR.git'
 
  stage 'Docker build'
  docker.build('myrepo')
 
  stage 'Docker push'
 docker.withRegistry('https://360348352476.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:mycred') {
    docker.image('myrepo').push('latest')
  }
}
