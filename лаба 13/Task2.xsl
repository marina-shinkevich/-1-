<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Аттестация студентов</h2>
        <table border="1">
          <tr bgcolor="#CCCCCC">
            <th>Студент</th>
            <th>Предмет</th>
            <th>Оценка</th>
          </tr>
          <xsl:for-each select="students/student">
            <xsl:choose>
              <xsl:when test="grade &lt; 4">
                <tr bgcolor="red">
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="subject"/></td>
                  <td><xsl:value-of select="grade"/></td>
                </tr>
              </xsl:when>
              <xsl:when test="grade &gt; 8">
                <tr bgcolor="green">
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="subject"/></td>
                  <td><xsl:value-of select="grade"/></td>
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <tr>
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="subject"/></td>
                  <td><xsl:value-of select="grade"/></td>
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>