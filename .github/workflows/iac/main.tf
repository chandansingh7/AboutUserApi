# Configure cloud provider (example: AWS)
provider "aws" {
  region = var.aws_region
}

# Define resources (example: EC2 instance)
resource "aws_instance" "java_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  # ... other instance configurations

  # Provisioning with Ansible
  provisioner "remote-exec" {
    inline = <<-EOF
      ansible-playbook -i /etc/ansible/hosts playbook.yml
    EOF
  }
}

# Variables (store sensitive values in GitHub Secrets)
variable "aws_region" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}
