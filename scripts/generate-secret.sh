cat <<-EOF > cert-secret.yaml
apiVersion: v1
data:
  ca.crt: "$(terraform output -module=cert-stakater public_certificate_intermediate_pem | base64 --wrap=0)"
  tls.crt: "$(terraform output -module=cert-stakater public_certificate_pem | base64 --wrap=0)"
  tls.key: "$(terraform output -module=cert-stakater public_certificate_key | base64 --wrap=0)"
kind: Secret
metadata:
  name: tls-cert
  namespace: control
type: Opaque
EOF