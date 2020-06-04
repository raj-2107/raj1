pipeline {
 agent any
 stages {
 stage('checkout') {
    steps {
       git branch: 'master', url: 'https://github.com/raj-2107/raj.git'
    }
  }
 stage('environment') {
     steps{
		withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'Access_key_ID'), 
						string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'Secret_key_ID')]) {
					
					echo "${Access_key_ID}" 
					echo "${Secret_key_ID}"
				    
				    sh "echo $HOME"
				    sh "echo [jenkins] > ~/.aws/credentials"
					sh "echo aws_access_key_id=${Access_key_ID} >> ~/.aws/credentials"
					sh "echo aws_secret_access_key=${Secret_key_ID} >> ~/.aws/credentials"

			}
     }
  }
 
 stage('terraform init'){
     steps{
	   sh '/usr/local/bin/terraform init'
     }
 }
 stage('terraform plan -out=plan'){
     steps{
	   sh '/usr/local/bin/terraform plan'
     }  
 }
 stage('terraform apply'){
     steps{
	  sh '/usr/local/bin/terraform apply -auto-approve'
     } 
  }
  stage('terraform destroy'){
      steps{
        sh '/usr/local/bin/terraform destroy -auto-approve'
      }
  }
}
}
