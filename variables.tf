variable "ami" {}
variable "instance_type" {}

variable "bucket_name" {}

variable "cidr_block" {
  type = string
}
variable "cidr_blocks" {
  type = string
}
variable "availability_zone" {
  type = string
}
