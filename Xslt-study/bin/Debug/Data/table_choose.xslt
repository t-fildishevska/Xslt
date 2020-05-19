<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/catalog">
    <h1>My Book Collection - table 1</h1>
    <xsl:comment>
      Set backgroud color to blue for all books written before 2001 :)
    </xsl:comment>
    <br/>
    <table>
      <tr>
        <td style="width:70px">author</td>
        <td style="width:70px">title</td>
        <td style="width:40px">genre</td>
        <td style="width:20px">price</td>
      </tr>
      <xsl:for-each select="/catalog/book">
        <xsl:variable name="date" select="10000 * substring(publish_date, 1, 4) + 100 * substring(publish_date, 6, 2) + substring(publish_date, 9, 2)"/>
        <xsl:choose>
          <xsl:when test="$date &lt; 20010101">
            <tr style="background-color:#5dc8e3">
              <td>
                <xsl:value-of select="author"/>
              </td>
              <td>
                <xsl:value-of select="title"/>
              </td>
              <td>
                <xsl:value-of select="genre"/>
              </td>
              <td>
                <xsl:value-of select="price"/>
              </td>
            </tr>  
          </xsl:when>
          <xsl:otherwise>
            <tr>
              <td>
                <xsl:value-of select="author"/>
              </td>
              <td>
                <xsl:value-of select="title"/>
              </td>
              <td>
                <xsl:value-of select="genre"/>
              </td>
              <td>
                <xsl:value-of select="price"/>
              </td>
            </tr>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </table>
  </xsl:template>

</xsl:stylesheet>