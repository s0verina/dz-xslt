<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать все ноды, "глубина залегания" которых является четным числом
                    (для корневого элемента "глубина" равно 0.</h1>
            </body>
            <xsl:apply-templates select="items/*/* | items/*/*/*/*"/>
        </html>
    </xsl:template>
    <xsl:template match="items/*/* | items/*/*/*/*">
        <p>
             <xsl:value-of select="@id" />
        </p>
    </xsl:template>

</xsl:stylesheet>