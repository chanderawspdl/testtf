data "aws_availability_zones" "available" {}
resource "aws_instance" "web" {
  count =2
  ami           = "${var.ami_type}"
  instance_type = "${lookup(var.instance_type,var.environment)}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  #availability_zone = "${data.aws_availability_zones.available.names[1]}"


  tags = {
    Name = "Linuxbox[${count.index}]"
  }
}
