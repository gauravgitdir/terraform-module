
variable "db_engine" {
default = "aurora"
type = string
}

variable "account_id" {
default = "410533792414"
type = number 
}

variable "db_cluster_instance_name" {
default = "yashinsta"
type = string
}

variable "db_admin_username" {
default = "yash"
type = string
}

variable "db_name" {
default = "yashdb"
type = string
}


variable "db_admin_password" {
default = "yash123"
type = string
}

variable "instance_count" {
default = 2
type = number
}

variable "environment" {
type = string
}


