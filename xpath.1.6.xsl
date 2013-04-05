<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать людей, у которых "длинный" логин (длиннее трех символов)</h1>
            </body>
            <xsl:apply-templates select="persons/person/login[string-length(text()) &gt; 3]"/>
        </html>
    </xsl:template>
    <xsl:template match="persons/person/login[string-length(text()) &gt; 3]">
        <p>
            <xsl:value-of select="." />
        </p>
    </xsl:template>

</xsl:stylesheet>