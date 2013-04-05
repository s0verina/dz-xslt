<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Вычислить максимальное и минимальное значение среди всех 'item' ов.</h1>
            </body>
            <xsl:for-each select="items//*[not(*)]">
                <xsl:sort select="." data-type="number" order="descending"/>
                <xsl:if test="position() = 1">
                    <p>Max: <xsl:value-of select="."/></p>

                </xsl:if>
                <xsl:if test="position() = last()">
                    <p>Min: <xsl:value-of select="."/></p>

                </xsl:if>

            </xsl:for-each>

        </html>
    </xsl:template>



</xsl:stylesheet>