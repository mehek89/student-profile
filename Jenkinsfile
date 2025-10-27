pipeline {
  agent any

  tools {
    maven 'Maven3'   // name you set in Jenkins Global Tool config
    jdk 'JDK21'          // name you set for JDK 21 in Jenkins
  }

  environment {
    TOMCAT_URL = "http://localhost:8081"  // change to tomcat host if remote
    TOMCAT_CREDENTIALS = 'tomcat-creds'   // Jenkins credential ID for tomcat user
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        bat 'mvn -B clean package'
        // On Windows agents use: bat 'mvn -B clean package'
      }
      post {
        success {
          archiveArtifacts artifacts: 'target/*.war', fingerprint: true
        }
      }
    }

    stage('Deploy to Tomcat') {
      steps {
        // Use the Deploy to container plugin pipeline step.
        deploy adapters: [tomcat9(
            url: "${env.TOMCAT_URL}",
            credentialsId: "${env.TOMCAT_CREDENTIALS}"
        )], war: '**/target/*.war'
      }
    }
  }

  post {
    success {
      echo "Deployment finished successfully."
    }
    failure {
      echo "Build or deployment failed."
    }
  }
}
