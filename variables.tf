variable "subnet" {
  type        = string
  description = "Subnet ID in which to place the instance."
}

variable "security_groups" {
  type        = list(string)
  description = "Security Groups to attach to the instance."
}

variable "ami" {
  type        = string
  default     = "ami-0022f774911c1d690"
  description = "AMI with which to launch the instance. The default is for Amazon Linux 2 in us-east-1."
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type with which to launch the instance"
}

variable "user_data" {
  type        = string
  description = "Commands to run when launching the instance."
  default     = <<EOF
#!/bin/bash
EOF
}

variable "delete_on_termination" {
  type        = bool
  default     = true
  description = "Whether to delete the network interface during instance termination."
}
