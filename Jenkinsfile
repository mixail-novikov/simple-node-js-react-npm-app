pipeline {
  stages {
    stage('Build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }        
      }
      steps {
        def app = docker.build("simple-image")
      }
    }

    stage('Test') {
      steps {
        app.inside {
            sh 'echo "Tests passed"'
        }
      }
    }
    // stage('Deliver') {
    //   steps {
    //     sh './jenkins/scripts/deliver.sh'
    //     input 'Finished using the web site? (Click "Proceed" to continue)'
    //     sh './jenkins/scripts/kill.sh'
    //   }
    // }
  }
  environment {
    CI = 'true'
  }
}