terraform {

  required_providers {

    random = {

      source  = "hashicorp/random"

      version = "3.1.0" #Forcing which version of plugin needs to be used.



    }

  }

}

provider "random" {



}





resource "random_string" "random" {

  length           = 8

  special          = true

  override_special = "@"

}

resource "random_password" "password" {

 

  length           = 8

  special          = true

  override_special = "@"

  min_upper        = "1"

  min_lower        = "1"



}



output "user" {

  description = "<user>:"

  value = "sandhya"

  sensitive = true

}



output "password" {

  description = "The password is:"

  value = random_password.password.*.result

  sensitive = true

}