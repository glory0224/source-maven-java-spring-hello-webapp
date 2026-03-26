pipeline {
  agent  any
  
  triggers {
    pollSCM('* * * * *')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main',
        url: 'https://github.com/glory0224/source-maven-java-spring-hello-webapp.git'
      }
    }
    stage('Build') {
      steps {
       sh 'mvn clean package -DskipTests'
      }
    }
    stage('Test') {
     steps {
      sh 'mvn test' 
     }
    }
    stage('Deploy') {
      steps {
        deploy adapters: [tomcat9(credentialId: 'tomcat-manager', url: 'http://192.168.56.102:8080')], contextPath: null, war: 'path/to/war'
      }
    }
  }
}

