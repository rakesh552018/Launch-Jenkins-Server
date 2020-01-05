# Launch-Jenkins-Server

Using terraform i have provisioned below infrastructure

# vpc.tf
Internet VPC,
Subnets,
Internet GW,
route tables,
route associations public.

# Securitygroup.tf
ssh,
http.

# provider.tf
aws 

# vars.tf
variable "AWS_REGION" ,
variable "AMIS" ,
variable "PATH_TO_PRIVATE_KEY" ,
variable "PATH_TO_PUBLIC_KEY" .

# key.tf
private and public key created by using below command.

In the directory to run    ssh-keygen -f mykey    | 

mykey and mykey.pub are created.

# instance.tf

launced Redhat Ec2 instance in above VPC, Subnet and security group.
written user_data to install jenkins server.


# To learn

i had difficulty to write userdata either using string or template.

i require some help.
