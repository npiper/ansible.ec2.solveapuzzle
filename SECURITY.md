# SECURITY DOMAIN

## Services

 * Certificate issuance & management
 * Cryptographic assets & services
 * Identity and access management
 * Key / Token management
 * Secret management
 * Security monitoring & intrusion detection


## Domain & Certificates

Domain: `neilpiper.me`

Certificate:   Let's encrypt

### Getting a certificate for the domain

Let’s Encrypt uses the ACME protocol to verify that you control a given domain name and to issue you a certificate. To get a Let’s Encrypt certificate, you’ll need to choose a piece of ACME client software to use.

Certbot is meant to be run on the server where your website is hosted.

The objective of Let’s Encrypt and the ACME protocol is to make it possible to set up an HTTPS server and have it automatically obtain a browser-trusted certificate, without any human intervention.

First, the agent proves to the CA that the web server controls a domain. Then, the agent can request, renew, and revoke certificates for that domain.

Let’s Encrypt identifies the server administrator by public key. The first time the agent software interacts with Let’s Encrypt, it generates a new key pair and proves to the Let’s Encrypt CA that the server controls one or more domains



#### Example Ubuntu 18 / Nginx installation

```
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:certbot/certbot
$ sudo apt-get update
$ sudo apt-get install python-certbot-nginx
```

## idam

http://www.keycloak.org/about.html

Cloudflare

Vault

## References

https://ietf-wg-acme.github.io/acme/draft-ietf-acme-acme.html

[Let's encrypt staging](https://letsencrypt.org/docs/staging-environment/)

[Revoking Certificates](https://letsencrypt.org/docs/revoking/)
