# Terraform script to create a Public EC2 instance and a Private EC2 instance
This module is dependent on [VPC module](https://github.com/asteranup/terraformaws)

In this module we will create public EC2 instance. This public instance is connected to internet with public subnet and internet gateway through route association. We will be able to RDP (as its an windows instance) 

Also we will create a private EC2 instance under private security group and subnet. This instance will not be reachable from internet. However we will be able to access (RDP) this instance from public instance.  
