# SECURITY DOMAIN

## Services

 * Certificate issuance & management
 * Cryptographic assets & services
 * Identity and access management
 * Key / Token management
 * Secret management
 * Security monitoring & intrusion detection
 * Transaction signingls

## Security domain networking

Private subnet - initially no internet exposure

Bastion host access only / VPN

Security Groups / Roles:
Internal Domain to Security Domain (SG)

Grants to access role:

Monitoring / detection / MFA

# Scenarios

 * Create neilpiper.me certificate root
 * Create security.neilpiper.me domain cert chain
 * Install Key/Secret server
 * Store Keys / Secrets in server
 * Establish VPN
 * Build a web server that serves HTTPS based on these assets
 * v1 Certificate / Key services to 1st Domain Role

## Domain & Certificates

Domain: `neilpiper.me`

Certificate:   Let's encrypt

![Deploy diagram](SecOps-Certificates.png)

### Getting a certificate for the domain

Let’s Encrypt uses the ACME protocol to verify that you control a given domain name and to issue you a certificate. To get a Let’s Encrypt certificate, you’ll need to choose a piece of ACME client software to use.

Certbot is meant to be run on the server where your website is hosted.

The objective of Let’s Encrypt and the ACME protocol is to make it possible to set up an HTTPS server and have it automatically obtain a browser-trusted certificate, without any human intervention.

First, the agent proves to the CA that the web server controls a domain. Then, the agent can request, renew, and revoke certificates for that domain.

Let’s Encrypt identifies the server administrator by public key. The first time the agent software interacts with Let’s Encrypt, it generates a new key pair and proves to the Let’s Encrypt CA that the server controls one or more domains

## Docker image to create certificates

Created a docker image to execute this from Command line.

https://github.com/npiper/aws-certbot

## idam

keycloak

IDAM outside of AWS

http://www.keycloak.org/about.html

https://hub.docker.com/r/jboss/keycloak/  

Cloudflare

# Certificate management
https://github.com/cloudflare/certmgr (Expiry)


https://github.com/cloudflare/cfssl ( SSL Signing etc;)

CFSSL is CloudFlare's PKI/TLS swiss army knife. It is both a command line tool and an HTTP API server for signing, verifying, and bundling TLS certificates

# Key and secret management.

Vault
https://www.vaultproject.io/

https://learn.hashicorp.com/vault/getting-started/install

Install launch vault
Start server (Dev?)
Storage - Encrypted EBS
Backup in encrypted S3

AWS Secrets engine
https://learn.hashicorp.com/vault/getting-started/dynamic-secrets

Systems manager - Parameter storegit
https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-paramstore.html

# Identity Model

## Trusted roles - Outside org

3rdPartySecurityRole (IDAM)


## Trusted roles - Org

Role: DomainSecurity Role

## Internal roles for Sec Domain:

Role: SecurityDomainAdmin
Role: SecurityDomainDev
Role: SecurityDomainBuild


## References

https://ietf-wg-acme.github.io/acme/draft-ietf-acme-acme.html

[Let's encrypt staging](https://letsencrypt.org/docs/staging-environment/)

[Revoking Certificates](https://letsencrypt.org/docs/revoking/)

[S3 Bucket security](https://aws.amazon.com/blogs/security/how-to-use-bucket-policies-and-apply-defense-in-depth-to-help-secure-your-amazon-s3-data/)

[AWS Certificate manager - import cert](https://docs.aws.amazon.com/acm/latest/userguide/import-certificate-api-cli.html)


[AWS blog - TLS Security to your container](https://aws.amazon.com/blogs/compute/maintaining-transport-layer-security-all-the-way-to-your-container-part-2-using-aws-certificate-manager-private-certificate-authority/)
