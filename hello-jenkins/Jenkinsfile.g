
                    stage("Start") {
                        node("master") {
                            sh """echo start"""
                        }
                    }

                    
                        stage('QA gatekeeper'){
                            
                            timeout(time: 10, unit: "SECONDS") {
                                input 'Deploy to QA?'
                            }

                        }
                        
                    
                        stage('Deploy to QA southcentralus'){
                            
                            node("master") {
                                unstash 'manifests'
                                def v = env.version

                                timeout(time: 20, unit: "SECONDS") {
                                    
                                    
                                }

                            }

                        }
                        
                    

                    stage("Done") {}

