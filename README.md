# Infrastructure Scripts

<br/>

# This repo has a makefile to easily create and set infrastructure for **atforestry** capstone project
* We use **GCP** to create a container cluster called **atforestry-cluster**
* **docker** artifact repo **atforestry-repo** was created manually for Model and data  
* container orchastration is done with **Kubernetes**
* prediction history data is managed by **postgres**
* model and data services configuration files are at ./yamls

<br/><br/><br/>

# makefile targets
Create the infrastructure and deploy for the first time


    $ create-infrastructure


Deploy data, model, front-end, monitoring services


    $ deploy-services


Clear prices database 


    $ reset-db
    

Terminate all services


    $ delete-services


Terminate the cluster


    $ delete-cluster