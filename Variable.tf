# vpc variables
variable "vpc_cidr" {
default        = "10.0.0.0/16"
description    = "vpc cidr block"
type           = string
}

variable "public_subnet_az1_cidr" {
default        = "10.0.0.0/24"
description    = "public subnet az1 cidr block"
type           = string
}

variable "public_subnet_az2_cidr" {
default        = "10.0.1.0/24"
description    = "public subnet az2 cidr block"
type           = string
}

variable "private_app_subnet_az1_cidr" {
default        = "10.0.2.0/24"
description    = "private app subnet az1 cidr block"
type           = string
}

variable "private_app_subnet_az2_cidr" {
default        = "10.0.3.0/24"
description    = "private app subnet az2 cidr block"
type           = string
}

variable "private_data_subnet_az1_cidr" {
default        = "10.0.4.0/24"
description    = "private data subnet az1 cidr block"
type           = string
}

variable "private_data_subnet_az2_cidr" {
default        = "10.0.5.0/24"
description    = "private data subnet az2 cidr block"
type           = string
}

# security group variables
variable "ssh_location" {
default        = "0.0.0.0/0"
description    = "private ip address of ece2"
type           = string
}

# rds variable
variable "database_snapshot_identifier" {
default        = "arn:aws:rds:us-east-1:659003453606:snapshot:fleetcart-final-snapshot"
description    = "database snapshot"
type           = string
}

variable "database_instance_class" {
default        = "db.t2.micro"
description    = "database instance class"
type           = string
}

variable "database_instance_identifier" {
default        = "dev-rds-database"
description    = "database instance identifier"
type           = string
}

variable "muiti_az_deployment" {
default        = false
description    = "create a standby db instance"
type           = bool
}

# application load balancer variables
variable "ssl_certificate_arn" {
default        = "arn:aws:acm:us-east-1:659003453606:certificate/7cc551d0-c6ce-4513-be82-42be488a78fc"
description    = "ssl certificate arn"
type           = string
}

# sns topic variables
variable "operator_email" {
default        = "oseto4life@gmail.com"
description    = "a valid email address"
type           = string
}

# auto scaling group variables
variable "launch_template_name" {
default        = "dev-launch-template"
description    = "name of the launch template"
type           = string
}

variable "ec2_image_id" {
default        = "ami-0d5136a1fbce3d5bf"
description    = "id of the ami"
type           = string
}

variable "ec2_instance_type" {
default        = "t2.micro"
description    = "ec2 intance type"
type           = string
}

variable "ec2_key_pair_name" {
default        = "mykey1"
description    = "name of my ec2 key pair"
type           = string
}