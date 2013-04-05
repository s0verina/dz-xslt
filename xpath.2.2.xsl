<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать все ноды, у которых есть "старший брат" и "младший брат".</h1>
            </body>
            <xsl:apply-templates select="items//*[following-sibling::* and preceding-sibling::* ]"/>
        </html>
    </xsl:template>
    <xsl:template match="items//*[following-sibling::* and preceding-sibling::* ]">
        <p>
            <xsl:value-of select="@id"/>
        </p>
    </xsl:template>

</xsl:stylesheet>