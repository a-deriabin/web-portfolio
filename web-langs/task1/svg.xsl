<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="ru">
            <head>
                <title>Задание 1.2. Дерябин Андрей</title>
                <style>
                    body {
                        margin: 0;
                    }
                    .content {
                        height: 100vh;
                        width: 100%;
                        display: grid;
                        place-items: center;
                    }
                </style>
            </head>
            <body>
                <div class="content">
                    <xsl:apply-templates />
                </div>
                <script>
                    // Firefox has a bug and doesn't render it until DOM is mutated.
                    document.body.innerHTML += "<div></div>"
                </script>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="графика">
        <svg>
            <xsl:attribute name="width">
                <xsl:value-of select="@ширина"/>
            </xsl:attribute>

            <xsl:attribute name="height">
                <xsl:value-of select="@высота"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse>
            <xsl:attribute name="cx">
                <xsl:value-of select="@cx"/>
            </xsl:attribute>

            <xsl:attribute name="cy">
                <xsl:value-of select="@cy"/>
            </xsl:attribute>

            <xsl:attribute name="rx">
                <xsl:value-of select="@rx"/>
            </xsl:attribute>

            <xsl:attribute name="ry">
                <xsl:value-of select="@ry"/>
            </xsl:attribute>

            <xsl:attribute name="style">
                fill:<xsl:value-of select="@заливка"/>;
                stroke:<xsl:value-of select="@ободок"/>;
                stroke-width:<xsl:value-of select="@ширина-ободка"/>;
            </xsl:attribute>

            <xsl:apply-templates/>
        </ellipse>
    </xsl:template>
</xsl:stylesheet>
