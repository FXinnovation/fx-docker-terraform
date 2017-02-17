node {
  stage('checkout') {
    checkout scm
    commit_id = sh(
      returnStdout: true,
      script: "git rev-parse HEAD"
    ).trim()
    tag_id = sh(
      returnStdout: true,
      script: "git describe --tags --exact-match || git rev-parse HEAD"
    ).trim()
    scm_url = sh(
      returnStdout: true,
      script: "git config --get remote.origin.url"
    ).trim()
  }
  stage('pre-build') {
    sh 'gcloud --version && docker --version'
  }
  stage("build") {
    sh "docker build \
         --label \"org.label-schema.vcs-ref\"=\"${commit_id}\" \
         --label \"org.label-schema.version\"=\"${tag_id}\" \
         --label \"org.label-schema.build-date\"=\"\$(date -u +\"%Y-%m-%dT%H:%M:%SZ\")\" \
         --label \"org.label-schema.usage\"=\"${scm_url}/src?at=${tag_id}\" \
         -t fxinnovation/terraform:${tag_id} ."
  }
  stage("test") {
    sh "docker run fxinnovation/terraform:${tag_id} version"
    sh "docker inspect fxinnovation/terraform:${tag_id}"
  }
  stage("publish") {
    if(tag_id != commit_id){
//      withCredntials(''){
//        sh "docker login -u -p"
//        sh "docker push fxinnovation/terraform:${tag_id}"
//        sh "docker tag fxinnovation/terraform:${tag_id} fxinnovation/terraform:latest"
//        sh "docker push fxinnovation/terraform:latest"
//      }
    }else{
      sh 'echo "This is not a tagged version, skipping publishing"'
    }
  }
}
