terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }
  }
}

resource "local_file" "inventory" {
  content = templatefile("inventory.ini", {
    public_ip_address = azurerm_public_ip.pip.ip_address
  })
  filename = "inventory2.ini"
}