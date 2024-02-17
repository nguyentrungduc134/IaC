terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.0.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "3.0.0"
    }
  }
}

resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "ec2_keys" {
  content  = templatefile("cloud-config.yaml.tpl", { private_key = tls_private_key.ssh_key.private_key_pem, public_key = tls_private_key.ssh_key.public_key_openssh })
  filename = "cloud-config.yaml"
}
