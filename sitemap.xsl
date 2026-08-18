<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Heatwave Website - XML Sitemap</title>

                <style>
                    body {
                        margin: 0;
                        font-family: Arial, sans-serif;
                        background: #f5f7fa;
                        color: #222;
                    }

                    h1 {
                        background: #b3d5e8;
                        padding: 25px;
                        margin: 0;
                        font-size: 28px;
                    }

                    .container {
                        width: 95%;
                        margin: 25px auto;
                        background: white;
                        border-radius: 12px;
                        padding: 20px;
                        box-shadow: 0 2px 8px rgba(0,0,0,0.08);
                    }

                    .header {
                        display: grid;
                        grid-template-columns: 55% 20% 15% 10%;
                        font-weight: bold;
                        padding: 15px 8px;
                        border-bottom: 1px solid #ddd;
                    }

                    .row {
                        display: grid;
                        grid-template-columns: 55% 20% 15% 10%;
                        padding: 20px 8px;
                        border-bottom: 1px solid #eee;
                        align-items: center;
                    }

                    a {
                        color: #0086c9;
                        text-decoration: none;
                        word-break: break-all;
                    }

                    a:hover {
                        text-decoration: underline;
                    }

                    .value {
                        font-size: 14px;
                    }
                </style>
            </head>

            <body>

                <h1>XML Sitemap</h1>

                <div class="container">

                    <div class="header">
                        <div>Target URL</div>
                        <div>Last Modified</div>
                        <div>Change Freq</div>
                        <div>Priority</div>
                    </div>

                    <xsl:for-each select="s:urlset/s:url">

                        <div class="row">

                            <div>
                                <a href="{s:loc}">
                                    <xsl:value-of select="s:loc"/>
                                </a>
                            </div>

                            <div class="value">
                                <xsl:value-of select="s:lastmod"/>
                            </div>

                            <div class="value">
                                <xsl:value-of select="s:changefreq"/>
                            </div>

                            <div class="value">
                                <xsl:value-of select="s:priority"/>
                            </div>

                        </div>

                    </xsl:for-each>

                </div>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>