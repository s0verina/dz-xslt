<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать людей, принадлежащих к группе html</h1>
            </body>
            <xsl:apply-templates select="persons/person/group[text() = 'html']"/>
        </html>
    </xsl:template>
    <xsl:template match="persons/person/group[text() = 'html']">
        <p>
            <xsl:value-of select="../login" />
        </p>
    </xsl:template>

</xsl:stylesheet>