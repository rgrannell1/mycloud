variable "DIGITAL_OCEAN_TOKEN" {}
variable "SHH_PUBLIC_KEY_PATH" {}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token  = var.DIGITAL_OCEAN_TOKEN
}

resource "digitalocean_ssh_key" "mycloud_ssh" {
  name       = "MyCloud SSH"
  public_key = file(var.SHH_PUBLIC_KEY_PATH)
}

resource "digitalocean_droplet" "mycloud" {
  image              = "ubuntu-20-04-x64"
  name               = "mycloud"
  region             = "ams3"
  size               = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.mycloud_ssh.fingerprint]
}

resource "digitalocean_floating_ip" "mycloud" {
  droplet_id = digitalocean_droplet.mycloud.id
  region     = digitalocean_droplet.mycloud.region
}

