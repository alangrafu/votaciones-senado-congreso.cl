votaciones-senado-congreso.cl
=============================

Extracción, parsing y conversión de votaciones del senado de Chile a RDF


quickstart
==========

Los datos en RDF están en data/all.ttl.gz

not-so-quickstart
=================

Los archivos XML están en data/xml.tar.gz.

```
 mv data/xml.tar.gz

# Convierte los XML en pares de archivos CSV (por sesion y por votacion)
 ./1_xml2csv.sh 
# Convierte los archivos CSV en TTL
 ./2_csv2rdf.sh
# Une todos los archivos en uno solo
 cat *.ttl > ALL
# [OPCIONAL] Entrega los mismos datos en una versión más compacta
 rapper -i turtle -o turtle ALL > all.ttl
 
 
 From the beginning
 ==================
 
 Ejecutar
 
```
  ./0_fetchxml.sh
```

y luego hacer lo indicado en not-so-quickstart
