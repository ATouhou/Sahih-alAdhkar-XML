<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" encoding="utf-8" indent="yes" />

<xsl:template match="/group/dua/content/narrator">
  <span class="narrator"><xsl:value-of select="." /></span>
</xsl:template>

<xsl:template match="/">
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8"/>
  <title>صحيح الأذكار</title>
  <style>
    *{
      font-family: sans-serif;
      text-align: right;
      text-direction: rtl;
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
    .arabic > para{
      font-family: "KFGQPC Uthman Taha Naskh";
      font-size: 2.5em;
      text-align: right;
    }
    .arabic > para > narrator{
      font-family: "KFGQPC Uthman Taha Naskh";
      text-align: right;
      color: green;
    }
    .arabic > para > dua{
      font-family: "KFGQPC Uthman Taha Naskh";
      text-align: right;
      color: blue;
    }
    .reference{color:brown}
    
    
    .arabic > p{
      font-family: "KFGQPC Uthman Taha Naskh";
      font-size: 2.5em;
      text-align: right;
    }
    .arabic > p > narrator{
      font-family: "KFGQPC Uthman Taha Naskh";
      text-align: right;
      color: green;
    }
    .arabic > p > dua{
      font-family: "KFGQPC Uthman Taha Naskh";
      text-align: right;
      color: blue;
    }
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
                <!-- <xsl:value-of select="content"/> -->
                <xsl:for-each select="content/p">
                  <xsl:copy-of select="."/>
                </xsl:for-each>
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