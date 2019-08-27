<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes" encoding="iso-8859-1"/>
  <xsl:template match="HOME/*">
    <xsl:variable name="NodeName">
      <xsl:value-of select="name(current())"/>
    </xsl:variable>
    <Html>
      <Head>
        <script lang="javascript" type="text/javascript">
          debbuger:
          function HideShowDiv(divid)
          {
          var divlayer = document.getElementById(divid);
          if(divlayer.style.display == "block")
          {
          divlayer.style.display = "none";
          }
          else
          divlayer.style.display = "block"
          }
        </script>
      </Head>
      <Body>
        <Table class="Dynamictable">
          <tr>
            <td class="Bodytd" onmousedown="HideShowDiv('{$NodeName}')" align="Left">
              <xsl:value-of select="$NodeName"/>
            </td>
          </tr>
        </Table>
              <div class="Div" runat="server" id="{$NodeName}" >
                <xsl:for-each select="node()" >                 
                  <table>
                    <xsl:if test="position()  mod 2 = 1">
                      <tr bgcolor="LightBlue">
                        <xsl:variable name="ChildNodeName">
                          <xsl:value-of select="./child::node()"/>
                        </xsl:variable>
                        <td id="{$ChildNodeName}" width="150px" align="Right">
                          <a>
                      <xsl:attribute  name="href">
                        <xsl:value-of select="url"/>
                      </xsl:attribute>
                      <xsl:value-of select="$ChildNodeName"/>
                    </a>
                        </td>
                      </tr>
                    </xsl:if>
                    <xsl:if test="position()  mod 2 = 0">
                <tr bgcolor="Red">
                  <xsl:variable name="ChildNodeName">
                    <xsl:value-of select="./child::node()"/>
                  </xsl:variable>
                  <td d="{$ChildNodeName}" width="150px" align="Right">
                    <a>
                      <xsl:attribute  name="href">
                        <xsl:value-of select="url"/>
                      </xsl:attribute>
                      <xsl:value-of select="$ChildNodeName"/>
                    </a>
                  </td>
                </tr>
                    </xsl:if>
                  </table>
                </xsl:for-each>
              </div>
      </Body>
    </Html>
  </xsl:template>
</xsl:stylesheet>






