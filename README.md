# Infrastructure Scripts

<br/>

# This repo has a makefile to easily create and set infrastructure for **atforestry** capstone project
* We use **GCP** to create a container cluster called **atforestry-cluster**
* **docker** artifact repo **atforestry-repo** was created manually for Model and data  
* container orchastration is done with **Kubernetes**
* prediction history data is managed by **postgres**
* model and data services configuration files are at ./yamls

<br/><br/><br/>

# Using makefile
To create the infrastructure and deploy, run:


    $ make

or


    $ make create-infrastructure
    

<br/><br/><br/>

To deploy data, model, front-end, monitoring services, run:


    $ make deploy-services


To clear predictions database, run: 


    $ make reset-db
    

To terminate all services, run:


    $ make delete-services


To terminate the cluster, run:


    $ delete-cluster


To switch to working on atforestry-cluster, run:


    $ make auth