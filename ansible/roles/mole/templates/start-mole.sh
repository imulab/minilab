#!/bin/sh

/usr/local/bin/mole start local \
    {%- for it in mole.tunnels %}
    --source {{ it.source -}} \
    {% endfor %}
    {%- for it in mole.tunnels %}
    --destination {{ it.destination -}} \
    {% endfor %}
    --server {{ mole.ingress }}