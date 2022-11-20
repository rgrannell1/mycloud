# MyCloud

Configures an instance on DigitalOcean with my self-hosted applications behind an TLS-terminated load-balancer.

## Usage

(A reminder, for me, since this is pretty hard-coded)

- Use `rs terraform:apply` to deploy a VM behind `mycloud.rgrannell.xyz`
- Point domain to this instance
- Use `rs ansible:deploy` to configure the NGINX server. Generate certs manually
