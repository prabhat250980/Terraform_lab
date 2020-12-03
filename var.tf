variable "access_key" {
    type = string
  
}

variable "secret_key" {
    type = string

}

variable "ami_id" {
  type = string
  default = "ami-0d69571bc7b7ca095"
}

variable "region" {
    type = string
    default = "us-east-2"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}