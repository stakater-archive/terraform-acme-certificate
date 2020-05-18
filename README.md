# Terraform ACME Certificate

Acme Certificate Generation for different DNS providers using Terraform!

To generate certificates for different DNS providers using ACME, set the `dns_provider` variable and environment variables with credentials for your specific DNS provider. More information can be found [here](https://www.terraform.io/docs/providers/acme/dns_providers/).

Next simply execute

```bash
terraform init
terraform plan
terraform apply
```

You can get your certificate components via

```bash
terraform output public_certificate_pem                         //Public Certificate
terraform output public_certificate_key                         //Private key of certificate
terraform output public_certificate_intermediate_pem            //Intermediate certificates
terraform output complete_public_certificate_key                //Public Certifcate + Intermediate Certificates
```
