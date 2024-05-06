# Task:
Planning, building and implementing an architecture that will host a new web app for Elpharco Ltd.

# Network architecture:
Create a base environment/network architecture upon which 3-tier application will be deployed consisting of the following below:

# A VPC
Frontend:  Two Public Subnets spread across two availability zones within the web layer.
Middle-tier:  Two Private Subnets spread across two availability zones within the application layer.
Backend: Two Private Subnets spread across two availability zones within the database tier.
One Public Route Table that connects the public subnets to an internet gateway (The Internet).
One Private Route Table that will connect the application tier private subnets and a NAT gateway.

# Tier 1: Web tier (Frontend)
In this layer, the web servers that will host the frontend of our application will be launched. 

# The Build RoadMap:
A web server launch template to define what kind of EC2 instances will be provisioned for our application with user data field to install Apache web server and a basic HTML web page.
An Auto Scaling Group (ASG) that will dynamically provision the EC2 instances.
An Application Load Balancer (ALB) to help route incoming traffic to the proper targets. 
SG Rules for instances launched by the L-template (allow ssh on port 22 & http on port 80)
Application Load Balancer SG to allow http traffic on port 80

Tier 2: Application tier (Backend)
This layer is essentially host to the heart of the Elpharco application. It is where the source code and core operations- send/retrieve data to/from the Web and Database tiers.
The Application tier structure is very closely similar to the Web Tier but with some minor additions and considerations.

The Build RoadMap:
	A launch template to define the type of EC2 instances (t2.micro) + user data field to install mysql package.
	An Auto Scaling Group (ASG) to dynamically provision the EC2 instances.
	An Application Load Balancer (ALB) to route traffic from the Web tier/layer.
	A Bastion host to securely connect to the application servers.
	SG Rules for the App tier Instances (allow ssh on port 22 from bastion host & icmp ping from the web servers)
	ALB SG Rule (allow inbound http traffic from the web tier ALB SG)
	Bastion Host SG (allow ssh to bastion hosts from my ip)

Tier 3: Database tier (Data storage & retrieval)
The application servers must be able to read and write to database in order to perform necessary tasks and deliver proper content/services to the Web Tier and the users.

Provisioning a Relational Database Service (RDS) that uses MySQL.

The Build RoadMap: 
	A database security group (SG) that will allow inbound and outbound mySQL requests to and from the app servers (allow inbound and outbound traffic on port 3306).
	A DB subnet group to ensure the database is created in the proper subnets.
	An RDS database with MySql.
