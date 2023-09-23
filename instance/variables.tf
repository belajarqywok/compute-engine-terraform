# Instance Name
variable "instance_name" {
    description = "Compute Engine Instance Name"
    type = string
}

# Instance Zone
variable "instance_zone" {
    description = "Compute Engine Instance Zone"
    type = string
}

# Instance Type
variable "instance_type" {
    description = "Compute Engine Instance Type"
    type = string

    default = "e2-micro"
}

# Instance Image
variable "instance_image" {
    description = "Compute Engine Instance Image"
    type = string

    default = "debian-cloud/debian-11"
}

# Instance Sub Network
variable "instance_subnetwork" {
    description = "Compute Engine Instance SubNetwork"
    type = string
}

# SSH User
# variable "gce_ssh_user" {
#     description = "Compute Engine SSH user"
#     type = string
# }

# SSH Public Key
# variable "gce_ssh_pub_key_file" {
#     description = "Compute Engine SSH Public Key"
#     type = string
# }
