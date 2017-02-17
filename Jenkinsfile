node {
  dockerhub_repo = 'fxinnovation/terraform'
  ansiColor('xterm') {
    stage('checkout') {
      // Checking out scm
      checkout scm
      // Getting current commit sha1
      commit_id = sh(
        returnStdout: true,
        script: "git rev-parse HEAD"
      ).trim()
      // Getting current tag or commit sha1
      tag_id = sh(
        returnStdout: true,
        script: "git describe --tags --exact-match || git rev-parse HEAD"
      ).trim()
      // Getting scm url
      scm_url = sh(
        returnStdout: true,
        script: "git config --get remote.origin.url"
      ).trim()
    }
    stage('pre-build') {
      // Verifying docker is up and running
      sh 'docker --version && docker images'
    }
    stage("build") {
      // Building Docker Image
      sh "docker build \
           --label \"org.label-schema.vcs-ref\"=\"${commit_id}\" \
           --label \"org.label-schema.version\"=\"${tag_id}\" \
           --label \"org.label-schema.build-date\"=\"\$(date -u +\"%Y-%m-%dT%H:%M:%SZ\")\" \
           --label \"org.label-schema.usage\"=\"${scm_url}/src?at=${tag_id}\" \
           -t ${dockerhub_repo}:${tag_id} ."
    }
    stage("test") {
      // Testing Image Works
      sh "docker run ${dockerhub_repo}:${tag_id} version"
    }
    stage("publish") {
      // Checking if this is a tagged version
      if(tag_id != commit_id){
        // Using the docker hub's credentials
        withCredentials([
          usernamePassword(
            credentialsId: 'jenkins-fxinnovation-dockerhub', 
            passwordVariable: 'docker_password', 
            usernameVariable: 'docker_username')
        ]) {
          // Login to docker hub
          sh "docker login -u '${docker_username}' -p '${docker_password}'"
          // Tagging this image as latest
          sh "docker tag ${dockerhub_repo}:${tag_id} ${dockerhub_repo}:latest"
          // Push image as tagged image
          sh "docker push ${dockerhub_repo}:${tag_id}"
          // Push image using latest tag
          sh "docker push ${dockerhub_repo}:latest"
        }
      }else{
        sh 'echo "This is not a tagged version, skipping publishing"'
      }
    }
  }
}
