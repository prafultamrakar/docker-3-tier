#!/bin/bash

#Creating a self signed SSL certificate
#To do this we will use the openssl program to generate a key/cert pair

openssl req -newkey rsa:2048 -nodes -keyout mysite.com.key -x509 -days 365 -out mysite.com.crt


# To give some context as to what we’re doing in out openssl options:

# -x509 — to specify we want to create a self-signed certificate instead of generating a certificate signing request.
# -nodes — makes it so that we skip the option to secure our certificate with a passphrase, so that nginx can read it.
# -days 365 — specifies how long the certificate would be valid for, which is 365 days.
# -newkey rsa:2048 -- generate new rsa 2048 bit key
# -newrsa rsa:2048 — specifies that we want to generate both a new certificate and a new key with an RSA key of 2048 bits.
# -keyout /etc/.../yourfile.key — specifies the location of the output .key file.
# -out /etc/.../yourfile.crt — specifies the location of the output .crt file.


