<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Recetas</title>
                <link rel="stylesheet" type="text/css" href="../CSS/estilo.css"/>
            </head>
            <body>
                <header>
                    <div class="imagen_header">
                        <img alt="Delicias Kitchen" src="../imagenes/delicias.png"/>
                    </div>
                    <nav class="menu_nav">
                        <a class="menu_opc" href="../index.html">INICIO</a>
                        <a class="menu_opc" href="../sobre_mi/sobre_mi.html">SOBRE MÍ</a>
                        <a class="menu_opc" href="listado.html">RECETAS</a>
                        <a class="menu_opc" href="../contacto/contacto.html">CONTACTO</a>
                        <a class="menu_opc" href="../otras_cosas/otras_cosas.html">OTRAS COSAS</a>
                    </nav>
                </header>
                <div class="contenedor_recetas">
                <div class="tipo_receta">
                    <img class="icon-recetas" src="../icons/chef2.png" alt="receta"/>
                    <div class="intro_receta">
                        <h2>Recetas</h2>
                        <p class="intro_recetas">La pasta es un ingrediente básico en la cocina italiana y es muy versátil. Se puede cocinar
                            de muchas maneras diferentes, desde pastas simples con salsas ligeras hasta platos elaborados
                            con ingredientes más complejos. Algunos de los platos de pasta más populares incluyen spaghetti
                            con salsa de tomate, lasagne, carbonara, alfredo y marinara. La pasta también se puede cocinar con
                            verduras, carnes, mariscos y otros ingredientes para crear platos completos y equilibrados.</p>
                    </div>
                </div>
                    <xsl:for-each select="//receta">
                        <div class="preview_receta">
                            <h4><xsl:value-of select="nombre"/></h4>
                            <p><strong>Dificultad: </strong> <em><xsl:value-of select="difultad"/></em></p>
                            <p><strong>Cocina: </strong> <em><xsl:value-of select="cocina"/></em></p>
                            <p><strong>Vegano: </strong> <em><xsl:value-of select="vegano"/></em></p>
                        </div>
                    </xsl:for-each>
                </div>
                <footer>
                    <nav class="footer">
                        <a class="footer_text" href="">FACEBOOK</a>
                        <a class="footer_text" href="">TWITTER</a>
                        <a class="footer_text" href="">INSTAGRAM</a>
                        <a class="footer_text" href="">PINTEREST</a>
                        <a class="footer_text" href="">EMAIL</a>
                        <a class="footer_text" href="">RSS</a>
                    </nav>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
