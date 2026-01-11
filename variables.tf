variable "network_profiles" {
  description = <<EOT
Map of network_profiles, attributes below
Required:
    - location
    - name
    - resource_group_name
    - container_network_interface (block):
        - ip_configuration (required, block):
            - name (required)
            - subnet_id (required)
        - name (required)
Optional:
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    container_network_interface = object({
      ip_configuration = object({
        name      = string
        subnet_id = string
      })
      name = string
    })
  }))
}

