# Bring Up
- Checkout this roject and cd to jenkins-dev.
- Run ```docker-compose up``` and follow the logs
You will see the initial setup log as follows:
```
jenkins_1  |
jenkins_1  | *************************************************************
jenkins_1  | *************************************************************
jenkins_1  | *************************************************************
jenkins_1  |
jenkins_1  | Jenkins initial setup is required. An admin user has been created and a password generated.
jenkins_1  | Please use the following password to proceed to installation:
jenkins_1  |
jenkins_1  | 70e16fe7623141fe93aba45d41f187bf
jenkins_1  |
jenkins_1  | This may also be found at: /var/jenkins_home/secrets/initialAdminPassword
jenkins_1  |
jenkins_1  | *************************************************************
jenkins_1  | *************************************************************
jenkins_1  | *************************************************************
```
- Go to http://localhost:8080 and login with the password above then follow the basic installation steps. 
- Install suggested plugins and follow th einstructions to complete the configuration. 


# Create Sample Pipeline Project

- Create a job to point to the project directory on your local:
Pipeline name:  hello-jenkins
- Go to Pipeline section and add SCM properties as follows:
Pipeline -> Pipeline script from SCM -> Git -> Repository URL:
```/home/jenkins-dev```
Your home directory is mapped to /home in Jenkins. You can update this path to create/edit pipelines for other projects.  

Script Path
```hello-jenkins/Jenkinsfile```

- Make changes to your Jenkinsfile on your local and commit your local repo. You will see the changes on the pipeline once you run it.
update Jenkins file -> commit -> run build -> update Jenkins File ...


