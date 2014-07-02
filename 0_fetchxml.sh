#!/bin/bash

#Asumimos que los boletines están entre valores 0 y 10000
#TODO: Confirmar lo anterior

for i in $(seq 0 10000); do curl http://www.senado.cl/wspublico/votaciones.php?boletin=$i > $i.xml; done
