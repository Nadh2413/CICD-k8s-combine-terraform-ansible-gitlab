variable "public_ip_list" {
    type = list(object({
    public_ip_name               = string
  }))
}
variable "public_ip_resource_group" {
  
}
variable "vm_configs_list" {
  type = list(object({
    vm_size               = string
    computer_name         = string
    admin_username        = string
    admin_password        = string
    private_ip_address    = string
  }))
}

variable "resource_group_name" {
  type    = string

}

variable "resource_group_location" {
  type    = string
 
}

variable "prefix" {
  type    = string

}

variable "address_space" {
  type    = list(string)

}

variable "private_subnet" {
  type    = list(string)

}

