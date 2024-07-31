# Setup steps on your local system

1. clone the repo to your local machine with `git clone https://github.com/pranavsw/spiderTask-2-devops-submit.git`
2. Change cwd to corresponding directory
3. Make the deploy.sh file executable with cammand `chmod +x deploy.sh`
4. **Run the deploy.sh with `./deploy.sh`**
5. *Then after run deploy.log file will be created with all the log massages*

# Working Demo SS

1. Giving executable permissions
   ![Image1](/demo/Screenshot from 2024-08-01 01-47-35.png)

Basic Microservices for Online Shopping Platform

Make sure all three services are running fine locally before doing anything. Also, here we are using RabbitMq and Reddis too so set them up locally so you would not face any issues while running the APIs locally.

-> ALso change the .env.ex to .env in all three services so it can connect to the database.

Test command for user service: curl -X POST http://localhost:3001/users/register -H "Content-Type: application/json" -d '{"name":"", "email":"@example.com", "password":""}'

Use the above command to test whether the user service is working fine. 




