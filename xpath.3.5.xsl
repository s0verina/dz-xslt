<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать все ноды, не связанные с "плохими" нодами.</h1>
                <xsl:apply-templates select="items/item[not(contains(../bad, string(position())))]" />


            </body>

        </html>
    </xsl:template>

    <xsl:template match="items/item[not(contains(../bad, string(position())))]">

       <p> <xsl:value-of select="@id" /></p>

    </xsl:template>



</xsl:stylesheet>