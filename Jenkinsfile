pipeline{
  environment{
    registry = "d3athstalker/hackathon"
    registryCredential = "docker_hub_d3athstalker"
    dockerImage = ''
  }
  agent any
  stages{
    stage('Build'){
      steps{
        echo "Building project"
        sh 'npm run build'
      }
    }
    stage('Build docker image'){
      steps{
        echo "Building docker image"
        script{
          dockerImage = docker.build registry + ":$BUILD_NUMBER" 
        }
      }
    }
    stage('Push docker image'){
      steps{
        echo "Pushing docker image"
        script{
          docker.withRegistry('',registryCredential) {
            dockerImage.push()
            dockerImage.push('latest')
          }
        }
      }      
    }
    stage('Deploy to Dev'){   
      steps{
        echo "Deploying to dev environment"
        sh 'docker rm -f hackathon || true'
        sh 'docker run -d --name=hackathon -p 3000:80 d3athstalker/hackathon'
        //sh 'npm start'
      }
    }
  }
}
