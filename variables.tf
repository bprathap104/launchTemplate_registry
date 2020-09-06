variable "name" {
  type = string
  default = ""         # Should be overwritten
}
variable "device_name" {
   type = string
   default = "/dev/sda1"
}
variable "volume_size" {
   type = string
   default = "8"
}
variable "image_id" {
   type = string
   default = ""
}
variable "instance_type" {
   type = string
   default = "t2.micro"
}
variable "key_name" {
   type = string
   default = ""
}
variable "vpc_security_group_ids" {
   type = list
   default = [""]
}
variable "name_tag" {
   type = string
   default = "test"
}
variable "userdata_path" {
   type = string
   default = ""
}
