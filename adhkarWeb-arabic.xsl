<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" encoding="utf-8" indent="yes" />

<xsl:template match="/">
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8"/>
  <title>صحيح الأذكار</title>
  <style>
    *{
      font-family: sans-serif;
      text-align: right;
    }
    body{
      width: 960px;
      margin-left: auto;
      margin-right: auto;
    }
    h1{
      font-family: "Amiri";
      text-align: center;
    }
    h2{
      background: #d40000;
      padding: 10px;
      border-radius: 5px;
      color: white;
    }
    .arabic{
      font-family: "Traditional Arabic";
      font-size: 2.5em;
      text-align: right;
    }
    .reference{color:brown}
  </style>
</head>
<body>
  <h1>صحيح الأذكار</h1>
  <ol>
    <xsl:for-each select="adhkar/group">
      <li>
        <h2><xsl:value-of select="title/arabic"/></h2>
        <ol>
          <xsl:for-each select="dua">
            <li>
              <div class="arabic">
                <xsl:value-of select="content"/>
              </div>
              <div class="reference">
                <xsl:value-of select="reference/arabic"/>
              </div>
            </li>
            <hr/>
          </xsl:for-each>
        </ol>
      </li>
    </xsl:for-each>
  </ol>

</body>
</html>

</xsl:template>

</xsl:stylesheet>