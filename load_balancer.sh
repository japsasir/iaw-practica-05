#!/bin/bash
###---------------------------------- ###
### Script para máquina load_balancer ###
###---------------------------------- ###
# Configuramos el script para que muestre los comandos por consola
set -x
# ------------------------------------------------------------------------------ Variables de configuración ------------------------------------------------------------------------------ 

IP_PRIVADA_FRONT_1=
IP_PRIVADA_FRONT_2=
#-----------------------------------------------------

# Actualizamos los repositorios
apt update

# Instalamos apache
apt install apache2-y 

# Habilitamos los módulos de apache para configurarlo como proxy
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests