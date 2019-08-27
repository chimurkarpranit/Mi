<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="yes" />
  <xsl:template match="/">
    <html xml:lang="en">
      <head>
        <link media="all" href="css/styles.css" type="text/css" rel="stylesheet"/>
      </head>
      <body>
        <div class="main" id="background">

          <!-- The menu starts here -->
          <ul class="menu2">
            <xsl:for-each select="menu/top">
              <li class="top">
                <a class="top_link">
                  <xsl:attribute name="href">
                    <xsl:value-of select="@url"/>
                  </xsl:attribute>
                  <span>
                    <xsl:value-of select="@title"/>
                  </span>
                  <b>
                    <xsl:if test="count(link) > 0">
                      <xsl:attribute name="class">down</xsl:attribute>
                    </xsl:if>
                  </b>
                </a>
                <xsl:call-template name="nested_levels">
                  <xsl:with-param name="level" select="1"/>
                </xsl:call-template>
              </li>
            </xsl:for-each>
          </ul>
        </div>        
      </body>
    </html>
  </xsl:template>

  <xsl:template name="nested_levels">
    <xsl:param name="level" select="0"/>
    <xsl:if test="count(link) > 0">
      <ul>
        <xsl:if test="$level = 1">
          <xsl:attribute name="class">sub</xsl:attribute>
        </xsl:if>

        <xsl:for-each select="link">
          <li>
            <xsl:choose>
              <xsl:when test="count(link) = 0 and position()=1">
                <xsl:attribute name="class">subtop</xsl:attribute>
              </xsl:when>                            
            </xsl:choose>

            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="@url"/>
              </xsl:attribute>
              <xsl:value-of select="@title"/>              
            </a>
                        
          </li>
        </xsl:for-each>
      </ul>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
