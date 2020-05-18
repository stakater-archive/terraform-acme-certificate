
variable "platform_domain" {
  type = string
  description = "Name of base domain in DNS provider"
}

variable "dns_names" {
  type = list(string)
  description = "List of DNS names to allow with certificate"
}

variable "dns_provider" {
  type = string
  description = "Provider of domain specified in platform_domain. See https://www.terraform.io/docs/providers/acme/dns_providers/ for available DNS providers"
}

variable "platform_domain_administrator_email" {
  type = string
  description = "Email address to associate with ACME account"
}
