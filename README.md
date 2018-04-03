# Bring Up
Run jenkins:
```docker-compose up```
Access Jenkins http://localhost:8080

# Create Sample Pipeline Project

Create a job to point to the project directory on your local:
Pipeline name:  hello-jenkins
Go to Pipeline section and add SCM properties as follows:

Pipeline -> Pipeline script from SCM -> Git -> Repository URL:
```/home/jenkins-dev```
Your home directory is mapped to /home in Jenkins. You can update this path to create/edit pipelines for other projects.  

Script Path
```hello-jenkins/Jenkinsfile```

Make changes to your Jenkinsfile on your local and commit your local repo. You will see the changes on the pipeline.


