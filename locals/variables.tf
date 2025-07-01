variable "projects" {
    default = "roboshop"
 }

variable "environment" {
    default = "dev"
 }

variable "component" {
    default = "cart"
 } 

variable "common_tags" {
  default = {
    project = "roboshop"
    Terraform = "true"
  }
} 

# variables or not allowed inside variables
/* variable "final-name" {
     default = "${var.project}-${var.environment}-${var-component}"
 } */

# ec2 name = cart
# ec2 name = roboshop-dev-cart 