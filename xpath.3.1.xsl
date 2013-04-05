<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать `item`'ы, у которых `value` совпадает
                    с порядковым номером в списке, умноженным на 10.</h1>
            </body>
            <xsl:apply-templates select="items/item[value = position()*10]" />
        </html>
    </xsl:template>
    <xsl:template match="items/item[value = position()*10]" >
        <p>
            <xsl:value-of select="@id" />
        </p>
    </xsl:template>

</xsl:stylesheet>