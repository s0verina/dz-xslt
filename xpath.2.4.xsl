<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать все ноды, у которых есть предок и потомок с одинаковым классом.</h1>
            </body>

            <xsl:apply-templates select="items//*[ancestor::*/@class=descendant::*/@class]"/>
        </html>
    </xsl:template>


    <xsl:template match="items//*[ancestor::*/@class=descendant::*/@class]">
        <p>
            <xsl:value-of select="@id"  />
        </p>
    </xsl:template>

</xsl:stylesheet>