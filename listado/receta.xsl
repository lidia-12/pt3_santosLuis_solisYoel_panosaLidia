<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="recetas">
        <html>
            <body>
                <h1>Recetas</h1>
                <ul>
                    <xsl:apply-templates select="receta"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="receta">
        <li>
            <xsl:value-of select="nombre"/> - <xsl:value-of select="cocina"/> - <xsl:value-of select="difultad" />
            <ol>
                <xsl:for-each select="recetas/receta[nombre='Spaghetti al Pomodoro']/instrucciones/paso">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ol>
        </li>
    </xsl:template>
</xsl:stylesheet>
