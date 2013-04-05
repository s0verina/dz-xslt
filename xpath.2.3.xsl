<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать все ноды, у "деда" которых ровно 6 потомков.</h1>
            </body>

            <xsl:apply-templates select="items//*[count(descendant::*[parent::*/parent::*])=6]"/>
        </html>
    </xsl:template>


    <xsl:template match="items//*[count(descendant::*[parent::*/parent::*])=6]">
        <p>
            <xsl:value-of select="@id"  />
        </p>
    </xsl:template>

</xsl:stylesheet>