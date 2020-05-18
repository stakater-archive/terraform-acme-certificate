cat <<-EOF > cert-secret.yaml
apiVersion: v1
data:
  tls.crt: "$(terraform output -module=cert-stakater complete_public_certificate_key | base64 --wrap=0)"
  tls.key: "$(terraform output -module=cert-stakater public_certificate_key | base64 --wrap=0)"
kind: Secret
metadata:
  name: tls-cert
  namespace: control
type: Opaque
EOF