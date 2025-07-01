variable "ami_id" {
  type         = string
  default      = "ami-09c813fb71547fc4f"
  description  =  "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
      Name = "roboshop"
      Purpose = "variables-demo"
    }
}

variable "sg_name" {
  default = "allow_all"  
}

variable "sg_description" {
  default = "allowing all ports from internet"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"] 
}

variable "sg_tags" {
  default = { 
      Name = "allow_all"
    }
}

variable "environment" {
  default = "prod"
}

variable "instances" {
  default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
  default = "Z05130911714KBFT4KH1G" 
}

variable "domain_name" {
  default = "malli.site"
}

variable "common_tags" {
    default = {
        project = "roboshop"
        Terraform = "true"
    }
}