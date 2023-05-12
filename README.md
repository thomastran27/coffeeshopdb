# coffeeshopdb
This repository is created for CS 157A's final project at San Jose State University.  

Docker Repository:  
https://hub.docker.com/r/ttran27/coffeeshop_db  

Disclaimer: The commit dates do not reflect on the actual project's completion, as the files were ran and modified locally before any commits were made.  
  
Team Members:
```
Pulos Gorgees
Dennis Shih
Thomas Tran
```

In this project we created a database for a coffee shop and dockerized it, so that it can be used in an application and deployed by anyone.

Steps to set up on Docker:
```
docker build -t coffeeshop_db .
docker run -d -p 4408:4408 --name mycoffeeshop coffeeshop_db
```  

How to pull from Docker repository:
```
docker pull ttran27/coffeeshop_db
```  
Once you get the docker image and head over to the container's terminal, use these commands to get access into the database:
```
mysql -u root -p
Enter Password: wordpass
```
From there you can start using the database!  
We have created two databases, one is empty named ***coffeeshop*** and the other database has example values in it, ***coffeeshop_example***

For online application deployment, we recommend using Digital Ocean to deploy this database along with service application.  
Digital Ocean makes it easier to deploy docker images as they have created the infrastructure to do so.  
Read more here to find out:
https://docs.digitalocean.com/tutorials/build-deploy-first-image/
