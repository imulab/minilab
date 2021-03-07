# 01-ingress

This document describes the process of setting up the ingress VM. 

## Role

The ingress VM is the inception component and is responsible for reverse proxying public traffic onto private local ports. These local ports are supposed to be connected by the private tunnel VM via SSH tunnel.

In addition, the ingress VM also leverages ACME to serve automatic HTTPS.

