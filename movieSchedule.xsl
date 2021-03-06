<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <table id="movieTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="6">Dublin Cinema - Showing Time</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Duration</th>
                    <th>Screen Type</th>
                    <th>Showing Time</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/movies/title">
                    <tr>
                        <td colspan="6">
                            <xsl:value-of select="@genre" />
                        </td>
                    </tr>
                    <xsl:for-each select="movie">
                        <tr id="{position()}">
                            <td align="center">
                                <input name="item" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                            <td>
                                <xsl:value-of select="duration" />
                            </td>
                            <td>
                                <xsl:value-of select="screen" />
                            </td>
                            <td>
                                <xsl:value-of select="time" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>