resource "aws_instance" "first_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  //key_name               = aws_key_pair.key-terra.key_name
  //vpc_security_group_ids = ["${aws_security_group.allow_entry.id}"]
  tags = {
    Name = "My_First_Instance"
  }
}