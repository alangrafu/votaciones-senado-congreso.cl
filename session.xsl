<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:value-of select="votaciones/votacion/SESION"/>	<xsl:value-of select="votaciones/votacion/FECHA"/>	<xsl:value-of select="votaciones/votacion/TEMA"/>	<xsl:value-of select="votaciones/votacion/SI"/>	<xsl:value-of select="votaciones/votacion/NO"/>	<xsl:value-of select="votaciones/votacion/ABSTENCION"/>	<xsl:value-of select="votaciones/votacion/PAREO"/>	<xsl:value-of select="votaciones/votacion/TIPOVOTACION"/>	<xsl:value-of select="votaciones/votacion/ETAPA"/>\n
</xsl:template>
</xsl:stylesheet>
