
resource "azurerm_virtual_network" "test" {
  name                = "${var.prefix}-network"
  location            = var.location
  resource_group_name = azurerm_resource_group.test.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "test-subnet" {
  name                 = "${var.prefix}-internal"
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefix       = "10.0.0.0/24"
}

resource "azurerm_network_security_group" "allow-ssh" {
    name                = "${var.prefix}-allow-ssh"
    location            = var.location
    resource_group_name = azurerm_resource_group.test.name

    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = var.ssh-source-address
        destination_address_prefix = "*"
    }
}
