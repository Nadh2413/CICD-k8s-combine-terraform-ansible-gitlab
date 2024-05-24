public_ip_list = [
  {
  public_ip_name = "test-ip"
  },
  {public_ip_name = "test-ip2"}
]
public_ip_resource_group = "ip_public"

vm_configs_list = [
  {
    vm_size            = "Standard_A2_v2"
    computer_name      = "vm1-computer"
    admin_username     = "huancd"
    admin_password     = "Password1234!"
    private_ip_address = "10.0.2.4"
  },
  {
    vm_size            = "Standard_A2_v2"
    computer_name      = "vm2-computer"
    admin_username     = "huancd"
    admin_password     = "Password1234!"
    private_ip_address = "10.0.2.5"
  },
]

resource_group_name = "cicdk8s-resources"
resource_group_location = "East Asia"
prefix = "vm"
address_space = ["10.0.0.0/16"]
private_subnet = ["10.0.2.0/24"]

