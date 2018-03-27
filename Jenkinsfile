pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
    
  }
  stages {
    stage('Test') {
      steps {
        sh 'echo "ok"'
        sh 'node --version'
      }
    }
  }
  environment {
    CI = 'true'
  }
}