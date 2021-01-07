variable "location" {
  type    = string
  default = "southcentralus"
}
variable "prefix" {
  type    = string
  default = "test"
}

variable "ssh-source-address" {
  type    = string
  default = "*" # Incoming ip address anyone can connect to this server over ssh but need password/ssh.
}
