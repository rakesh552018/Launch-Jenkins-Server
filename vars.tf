
variable "AWS_REGION" {

default = "eu-west-2"

}

variable "AMIS" {
  
  default = "ami-0a0cb6c7bcb2e4c51"
    
  }

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
