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
                    * {
                        box-sizing: border-box;
                    }

                    body {
                        margin: 0;
                        font-family: Arial, Helvetica, sans-serif;
                        background: #f5f7fb;
                        color: #1f2937;
                    }

                    .container {
                        width: min(900px, 92%);
                        margin: 50px auto;
                    }

                    .header {
                        background: #ffffff;
                        border: 1px solid #e5e7eb;
                        border-radius: 12px;
                        padding: 24px;
                        margin-bottom: 20px;
                    }

                    h1 {
                        margin: 0 0 8px;
                        font-size: 26px;
                    }

                    .subtitle {
                        margin: 0;
                        color: #6b7280;
                        font-size: 14px;
                    }

                    .count {
                        display: inline-block;
                        margin-top: 12px;
                        padding: 5px 10px;
                        border-radius: 20px;
                        background: #eef2ff;
                        color: #3730a3;
                        font-size: 12px;
                        font-weight: 600;
                    }

                    .card {
                        background: #ffffff;
                        border: 1px solid #e5e7eb;
                        border-radius: 12px;
                        overflow: hidden;
                    }

                    .card-header {
                        padding: 16px 20px;
                        border-bottom: 1px solid #e5e7eb;
                        font-weight: 600;
                    }

                    .url {
                        padding: 16px 20px;
                        border-bottom: 1px solid #f0f0f0;
                    }

                    .url:last-child {
                        border-bottom: none;
                    }

                    a {
                        color: #2563eb;
                        text-decoration: none;
                        word-break: break-all;
                    }

                    a:hover {
                        text-decoration: underline;
                    }

                    .footer {
                        text-align: center;
                        margin-top: 20px;
                        color: #9ca3af;
                        font-size: 12px;
                    }
                </style>
            </head>

            <body>

                <div class="container">

                    <div class="header">

                        <h1>Heatwave Website Sitemap</h1>

                        <p class="subtitle">
                            XML Sitemap for search engine crawlers
                        </p>

                        <span class="count">
                            <xsl:value-of select="count(s:urlset/s:url)"/>
                            URLs
                        </span>

                    </div>

                    <div class="card">

                        <div class="card-header">
                            Website URLs
                        </div>

                        <xsl:for-each select="s:urlset/s:url">

                            <div class="url">

                                <a href="{s:loc}">
                                    <xsl:value-of select="s:loc"/>
                                </a>

                            </div>

                        </xsl:for-each>

                    </div>

                    <div class="footer">
                        Heatwave Website • Sitemap
                    </div>

                </div>

            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>