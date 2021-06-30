############################
# PROVIDERS
############################


provider "aws" {
    version = "~> 3.0"
    region  = var.region
    alias   = "infra"
    profile = "infra"
}

provider "aws" {
    version = "~> 3.0"
    region  = var.region
    alias   = "sec"
    profile = "sec"
}
