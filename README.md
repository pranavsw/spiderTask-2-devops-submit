# Setup steps on your local system

1. clone the repo to your local machine with `git clone https://github.com/pranavsw/spiderTask-2-devops-submit.git`
2. Change cwd to corresponding directory
3. Make the deploy.sh file executable with cammand `chmod +x deploy.sh`
4. **Run the deploy.sh with `./deploy.sh`**
5. *Then after run deploy.log file will be created with all the log messages*
6. Test command for user service: `curl -X POST http://localhost:3001/users/register -H "Content-Type: application/json" -d '{"name":"pranav", "email":"pranav@example.com", "password":"pranav"}'`
7. There are two compose.yml files. docker-compose-new.yml is for the images pulled from docker hub.
8. With docker-compose-new.yml file we dont need to build images seperately on local system.

# CI/CD workflow

1. Github actions setup on this repo and it triggers whener there is push and merge to main branch
2. **Pipeline creates the Docker image for respective microservice and pushes it to docker hub**
3. All the latest pushed images are available at :
   [order-service](https://hub.docker.com/r/pranavsw2004/order-service)
   [user-service](https://hub.docker.com/r/pranavsw2004/user-service)
   [product-service](https://hub.docker.com/r/pranavsw2004/product-service)
4. You can pull specific image from docker hub with command `docker pull pranavsw2004/order-service`
5. deply.sh script pull all the images and compose file too


## Working of CICD workflow actions
All the workflows are successful
![Image4](/demo/image5.png)


# Working Demo SS

1. Giving executable permissions
   ![Image1](/demo/image.png)
2. Running deploy.sh
   ![Image2](/demo/image3.png)
3. Output
   ![Image3](/demo/image2.png)


