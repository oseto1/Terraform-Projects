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