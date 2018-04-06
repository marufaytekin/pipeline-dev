node {
                    stage("Start") {
                        node("master") {
                            sh """echo start"""
                        }
                    }


                    stage ("Download Binaries") {
                        def server = Artifactory.server 'artifactory'
                        def downloadSpec = """ {
                            "files": [
                            {

                                "pattern": "media-local/windows/wmi_exporter/v0.2.7/wmi_exporter-amd64.zip",
                                "target": "wmi_exporter-amd64.zip"
                               }
                            ]
                        }"""
                     server.download(downloadSpec)   
                     }  

                        stage('Deploy to QA southcentralus'){
                            
                            node("master") {
                                def v = env.version

                                timeout(time: 20, unit: "SECONDS") {
                                    
                                    
                                }

                            }

                        }
                        
                    

                    stage("Done") {}
}
