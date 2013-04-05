<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать для каждого человека по одному его контакту -
                    мобильный телефон, рабочий телефон или email (что-нибудь одно, все равно что).</h1>
            </body>
            <xsl:apply-templates select="persons/person[phone[@type='work'] or phone[@type='mobile'] or email]"/>
        </html>
    </xsl:template>
    <xsl:template match="persons/person[phone[@type='work'] or phone[@type='mobile'] or email]">
        <table>
            <tr>
                <td><xsl:value-of select="login" /></td>
                <td><xsl:value-of select="email" /></td>
            </tr>
        </table>
    </xsl:template>

</xsl:stylesheet>