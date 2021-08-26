Challenge#1
===== 
Create a Three-Tier Architecture using the tool of your choosing/familiarity 

## What it does
Three-tier architecture is a well-established software application architecture that organizes applications into three logical and physical computing tiers: the presentation tier, or user interface; the application tier, where data is processed; and the data tier, where the data associated with the application is stored and managed.

I have replicated the below architecture using the terraform IAC and AWS as cloud provider. This infrastructure provides scalability (horizontal), high availability, fault tolerance and seccurity. The following services are configured to achieve the said architecture:

1. Elastic Compute Cloud (EC2)
2. Bastion
3. NAT Gateway
4. Auto Scaling Group
5. Virtual Private Cloud (VPC)
6. Elastic Load Balancer (ELB)
7. Security Groups 
8. Internet Gateway. 


![Network Diagram](https://user-images.githubusercontent.com/89520742/130833080-9df30743-b9b4-4287-8476-c97b084c4016.jpeg)


## Design approach: 

VPC -> Internet Gateway -> Subnet Creation -> Route table creation -> NAT gateway creation -> ELB creation -> Auto scaling group creation -> Bastion host creation 

## How to run
Note that, In order to run the terraform code we need Terraform v1.0.4 and valid AWS subscription (free subscriotion will also work).

Please follow below sequence to run the code:

1. Clone the repository and update the user profile (in variables.tf file) as per your credentials.
2. Go to tech-challenges folder by using the command - cd tech-challenges
3. Check the version of terraform using the command - terraform -version
4. Initialize terraform using the command - terraform init
5. Run the terraform plan using the command - terraform plan
6. Run the terraform apply to apply the coniguration onto AWS cloud using the command - terraform apply

## Test Output (just for reference):
Below are the test result of the dry run I performed to ensure that the code is running as expected:

VPC:

![image](https://user-images.githubusercontent.com/89520742/130840093-e9d3c2e4-0c63-49b3-9e2b-ff5cc5114da5.png)

Internet Gateway:

![image](https://user-images.githubusercontent.com/89520742/130840214-e53f796a-f01a-414a-b9b4-a140779dabee.png)

Subnet Creation:

![image](https://user-images.githubusercontent.com/89520742/130840475-a8cac385-6a36-4cf5-9f24-032a00d87c8d.png)

Route Table Creation:

![image](https://user-images.githubusercontent.com/89520742/130840652-d376e60c-41da-4a42-b264-087ae65fefbb.png)

ELB Creation:

![image](https://user-images.githubusercontent.com/89520742/130841004-43ef9ab0-c872-4133-b4ca-c8c8e52998c5.png)

Auto Scaling Group Creation:

![image](https://user-images.githubusercontent.com/89520742/130841243-cbbf5532-5b71-4502-a437-9ff5773838fb.png)

Database Creation:

![image](https://user-images.githubusercontent.com/89520742/130841377-ce076a73-7dd6-4735-9390-2e2f924e4d49.png)

Front End App:

![image](https://user-images.githubusercontent.com/89520742/130841706-f6190188-61e2-45ed-839e-69d0553c2957.png)
