import groovy.json.JsonOutput

                    stage("Start") {
                        node("master") {
                            sh """echo start"""
                        }
                    }

                    
                        stage('QA gatekeeper'){


  stage ("Download Binaries") {
    def server = Artifactory.server 'artifactory'
    def file = [
      'pattern': "media-local/windows/wmi_exporter/v${buildVersion}/wmi_exporter-amd64.zip",
      'target': "${workspace}/wmi_exporter-amd64.zip",
      'flat': true,
    ]
    server.download(
      JsonOutput.toJson([
        'files': [file]
      ]))
  }

                        }
                        
                    
                        stage('Deploy to QA southcentralus'){
                            
                            node("master") {
                                def v = env.version

                                timeout(time: 20, unit: "SECONDS") {
                                    
                                    
                                }

                            }

                        }
                        
                    

                    stage("Done") {}

