########################
# VARIABLES
########################

variable "region" {
    type    = string
    default = "us-east-1"
}

variable "peering_users" {
    type  = list(string)
}


