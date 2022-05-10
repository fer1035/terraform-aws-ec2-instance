resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  user_data     = var.user_data

  network_interface {
    network_interface_id  = aws_network_interface.netif.id
    device_index          = 0
    delete_on_termination = var.delete_on_termination
  }
}
