terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.33.0"
    }
  }
  required_version = ">= 1.0.0"
}

// Configure the Microsoft Azure Provider.
provider "azurerm" {
  features {}
}

// Create a azure resource group
resource "azurerm_resource_group" "resource_group" {
  name     = "resource_group"
  location = "West US"
}

// Create a azure virtual network
resource "azurerm_virtual_network" "virtual_network" {
  name                    = "virtual_network"
  address_space           = ["10.0.0.0/16"]
  dns_servers             = ["1.1.1.1", "1.0.0.1", "2606:4700:4700::1111", "2606:4700:4700::1001", "8.8.8.8", "8.4.4.8", "2001:4860:4860::8888", "2001:4860:4860::8844"]
  location                = azurerm_resource_group.resource_group.location
  resource_group_name     = azurerm_resource_group.resource_group.name
  flow_timeout_in_minutes = 30
}

// Create a azure subnet
resource "azurerm_subnet" "subnet" {
  name                 = "subnet"
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}

// Create a azure public ip
resource "azurerm_public_ip" "public_ip" {
  name                    = "public_ip"
  location                = azurerm_resource_group.resource_group.location
  resource_group_name     = azurerm_resource_group.resource_group.name
  allocation_method       = "Static"
  idle_timeout_in_minutes = 5
  ip_version              = "IPv4"
  sku                     = "Basic"
  sku_tier                = "Regional"
}

// Create a azure network security group
resource "azurerm_network_security_group" "network_security_group" {
  name                = "network_security_group"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
}

// Create a azure network security rule
resource "azurerm_network_security_rule" "network_security_rule" {
  name                        = "network_security_rule"
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.resource_group.name
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

// Create a azure storage account
resource "azurerm_storage_account" "storage_account" {
  name                              = "githubcodesnippets"
  access_tier                       = "Hot"
  account_kind                      = "StorageV2"
  allow_nested_items_to_be_public   = true
  cross_tenant_replication_enabled  = true
  default_to_oauth_authentication   = false
  enable_https_traffic_only         = true
  account_tier                      = "Standard"
  account_replication_type          = "LRS"
  infrastructure_encryption_enabled = true
  is_hns_enabled                    = true
  min_tls_version                   = "TLS1_2"
  nfsv3_enabled                     = true
  public_network_access_enabled     = true
  shared_access_key_enabled         = true
  queue_encryption_key_type         = "Service"
  resource_group_name               = azurerm_resource_group.resource_group.name
  location                          = azurerm_resource_group.resource_group.location
  blob_properties {
    change_feed_enabled           = true
    change_feed_retention_in_days = 7
    last_access_time_enabled      = true
    versioning_enabled            = true
  }
  network_rules {
    bypass = [
      "AzureServices"
    ]
    default_action = "Allow"
    // ip_rules                   = [""]
    // virtual_network_subnet_ids = [""]
  }
  queue_properties {
    hour_metrics {
      enabled               = true
      include_apis          = true
      retention_policy_days = 7
      version               = "1.0"
    }
    logging {
      delete                = true
      read                  = true
      retention_policy_days = 7
      version               = "1.0"
      write                 = true
    }
    minute_metrics {
      enabled               = true
      include_apis          = true
      retention_policy_days = 7
      version               = "1.0"
    }
  }
  share_properties {
    retention_policy {
      days = 7
    }
  }
}

// Create a azure network interface
resource "azurerm_network_interface" "network_interface" {
  name                          = "network_interface"
  location                      = azurerm_resource_group.resource_group.location
  resource_group_name           = azurerm_resource_group.resource_group.name
  enable_accelerated_networking = true
  enable_ip_forwarding          = true
  ip_configuration {
    name                          = "ipconfig"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
    subnet_id                     = azurerm_subnet.subnet.id
  }
}

// Create a azure virtual machine
resource "azurerm_linux_virtual_machine" "linux_virtual_machine" {
  name                            = "linux_virtual_machine"
  allow_extension_operations      = true
  priority                        = "Regular"
  provision_vm_agent              = true
  location                        = azurerm_resource_group.resource_group.location
  resource_group_name             = azurerm_resource_group.resource_group.name
  size                            = "Standard_B1s"
  admin_username                  = "azureuser"
  computer_name                   = "myvm"
  disable_password_authentication = true
  admin_ssh_key {
    username   = "azureuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClazm9UudCLHWlZQeorTMQGlr0RxgfopCzAk7XRmlxuFLPsdm59s8uAwdwe6cs4x8wgOjQbCyLaFhd4Zzrm8ohqi4kfxT1354LQGIAAMykKBYH//WNNn1HdC6SRv8+Ha2bClpozZRR42FTBpgV9UAeL17F0NITSPGac87cBQwTp9dViZ0I0qxJ4Ytm4eptrq1X7+r+wgtxzUU7IEvRJ71LaGtQYX9f4WUBpdeKQ7sQ5iVU3MNoZlt3oLYYzJciZDh+2GoZTfvd7Oyo7bmT+vNczV8//BC20Z0Klp207NpyIEG8EKjgogj8VaNu2MR+kHWKk9+chVOFobL9n9oU6llJ"
  }
  network_interface_ids = [
    azurerm_network_interface.network_interface.id
  ]
  os_disk {
    name                      = "myOsDisk"
    disk_size_gb              = 30
    storage_account_type      = "Standard_LRS"
    caching                   = "ReadWrite"
    write_accelerator_enabled = true
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "22.04-LTS"
    version   = "latest"
  }
  termination_notification {
    enabled = true
  }
}

/*
// Create a azure bastion host.
resource "azurerm_bastion_host" "bastion_host" {
  name                = "bastion_host"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  ip_configuration {
    name                 = "ipconfig"
    subnet_id            = azurerm_subnet.subnet.id
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}
*/
