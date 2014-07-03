<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:text>sesion	fecha	tema	si	no	abstencion	pareo	tipo_votacion	etapa	quorum
</xsl:text>
<xsl:value-of select="normalize-space(votaciones/votacion/SESION)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/FECHA)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/TEMA)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/SI)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/NO)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/ABSTENCION)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/PAREO)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/TIPOVOTACION)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/ETAPA)"/><xsl:text>	</xsl:text><xsl:value-of select="normalize-space(votaciones/votacion/QUORUM)"/><xsl:text>
</xsl:text>
</xsl:template>
</xsl:stylesheet>
