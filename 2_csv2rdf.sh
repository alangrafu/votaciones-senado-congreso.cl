#!/bin/bash

#Asumimos que los boletines están entre valores 0 y 10000
#Asumimos que el script corre en un ambiente virtual con los paquetes de requirements.txt instalados

for i in $(seq 0 10000); do echo $i; python csv2ttl.py $i > $i.ttl; done
