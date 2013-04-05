<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Выбрать для каждого контакта его рабочий телефон, если нет рабочего, то мобильный,
                    если нет никакого телефона, то email.</h1>
                <table>
                    <xsl:apply-templates select="persons/person[phone[@type='work'] or phone[@type='mobile'] or email]"/>
                </table>
            </body>


        </html>
    </xsl:template>
    <xsl:template match="persons/person[phone[@type='work'] or phone[@type='mobile'] or email]">

            <tr>
                <td><xsl:value-of select="login" /></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="phone[@type='work']">
                                <xsl:value-of select="phone[@type='work']"/>
                        </xsl:when>
                        <xsl:when test="phone[@type='mobile']">
                                <xsl:value-of select="phone[@type='mobile']"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="email"/>
                        </xsl:otherwise>
                    </xsl:choose>

                </td>
            </tr>

    </xsl:template>

</xsl:stylesheet>