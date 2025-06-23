# isha_votingapp_lonleybag

## ARCHITECTURE


![architecture excalidraw](https://github.com/user-attachments/assets/ba5a0e71-8354-4a95-a723-ddb9fce9d0b4)

* A front-end web app in Python which lets you vote between two options
* A Redis which collects new votes
* A .NET worker which consumes votes and stores them in…
* A Postgres database backed by a Docker volume
* A Node.js web app which shows the results of the voting in real time

## How to run docker app locally

* Step 0: minikube start
* Step 1: docker run -d --name=redis redis
* Step 2: docker run -d --name postgres:9.4
* Step 3: docker run --name=vote -p 5000:80 --link redis:redis voting-app
* Step 4: docker run -d --name=result 5001:80 --link db:db result-app
* Step 5: docker run -d --name=worker --link db:db --link redis:redis worker

## How to run EC2 instance using terraform 

* Step 0: aws configure
* Step 1: terraform init
* Step 2: terraform plan
* Step 3: terraform apply

[I dont want to create an ec2 instance because I dont want to put my card details even for free tier. I have previously created aks in azure and run the same docker voting app as a kubernetes application on there]

## Results

Vote

![voting-vote](https://github.com/user-attachments/assets/5aefabbe-ce8c-483f-ab43-0feb7b1ab013)

Result

![voting-result](https://github.com/user-attachments/assets/25464ae8-a045-444d-a3d9-43437c5696f0)

