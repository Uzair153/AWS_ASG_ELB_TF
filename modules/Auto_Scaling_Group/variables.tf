variable "AG_name" {
  type = string
}
variable "policy_name" {
  type = string
}
variable "ami_id" {
    type = string
}
variable "instance_type" {
  type = string
}
variable "min_size" {
  type = string
}
variable "max_size" {
  type = string
}
variable "desired_capacity" {
  type = string
}
variable "health_check_grace_period" {
  type = string
   
}
variable "health_check_type" {
  type = string
}
variable "cooldown" {
  type = string
}
variable "key" {
    type = string
  
}
variable "key_name" {
  type = string
}
variable "ports" {
  type = list(number)
}
variable "SG_tag" {
  type = string
}
variable "SG_name" {
  type = string
}