This is a sample project that demonstrates how to run a local Jenkins server via docker-compose and develop/test your pipeline scripts on it. 

# Launch Jenkins
- Checkout this project to a directory (`user_home`) and go to `/user_home/pipeline-dev`.
- Run `docker-compose up` and follow the logs. You will see the initial setup log as follows:
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
- In `docker-compose.yml` file, your home directory is mapped to `/home` in Jenkins. You can update this path to create/edit pipelines for other projects.
- Go to `http://localhost:8080` and login with the password above then follow the basic installation steps. 
- Install suggested plugins and follow the instructions to complete the configuration. 


# Create Pipeline

- Create a job to point to the project directory on your local. For an example I provide a pipeline called `hello-jenkins`
- Configure the pipeline (Pipeline -> Pipeline script from SCM -> Git as follows:
    * Set Repository URL to `/home/pipeline-dev`  
    * Set Script Path `hello-jenkins/Jenkinsfile`
- Your pipeline project it set to  read from your local git repository and ready to run. 

# Iterate
You can make changes to your Jenkinsfile on your local and commit your local repo. Then run the pipeline to see the changes.




