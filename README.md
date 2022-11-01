# Django App with jenkins pipeline
### Steps:

- apply infrastructure with [Terraform ](https://github.com/Alialshemy/iti_final_project.git) in GCp 
- Instaling jenkins in cluster with  [helm](https://github.com/Alialshemy/iti_final_project.git)  
- dockerize Django application
- configure Credentials in Jenkins
- create CI pipeline with Jenkins
- Create CD pipline with  Jenkins

# Dockerize Django app
```
    docker build -t <docker.io>/dockerhub-account-name/name-application
```
# Add Credentials in Jenkins
 - github Credentials
 - dockerhub Credentials
 - serviceaccount Credentials
 ![Credentials](https://github.com/Alialshemy/Django_app/blob/main/images/Credentials.png)
# create CI pipline :
  -  pull code from github 
  -  build Django docker image 
  -  push this image to dockerhub
  -  triger CD pipline to run
  ![Pipline](https://github.com/Alialshemy/Django_app/blob/main/images/CI.png)
# create CD Pipline
  - apply deployment application in K8s
   ![Pipline](https://github.com/Alialshemy/Django_app/blob/main/images/CD.png)




