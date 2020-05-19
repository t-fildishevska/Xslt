<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:key name="bookId" match="book" use="@id" />

  <xsl:template match="/catalog">
    <h1>My Book Collection - table 1</h1>
    <br/>
    <table>
      <tr>
        <td style="width:20px">id</td>
        <td style="width:70px">author</td>
        <td style="width:70px">title</td>
        <td style="width:40px">genre</td>
        <td style="width:20px">price</td>
      </tr>
      <xsl:for-each select="/catalog/book">
        <xsl:if test="price &gt; 10">
        <tr>
          <td>
            <xsl:value-of select="@id"/>
          </td>
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
        </xsl:if>
      </xsl:for-each>
    </table>
  </xsl:template>

</xsl:stylesheet>