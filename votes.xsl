<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:text>parlamentario	voto</xsl:text>
<xsl:for-each select="votaciones/votacion/DETALLE_VOTACION/VOTO">
<xsl:value-of select="PARLAMENTARIO"/><xsl:text>	</xsl:text><xsl:value-of select="SELECCION"/><xsl:text>
</xsl:text>
      </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
