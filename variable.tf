variable "ami_type" { default ="ami-04b9e92b5572fa0d1"}
variable "environment" {}
variable "instance_type" {
  type = "map"
  default ={
  dev ="t2.micro"
  prod ="t2.medium"
}
}
