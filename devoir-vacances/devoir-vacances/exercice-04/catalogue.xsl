<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:my="uri:documents-structures/devoirs/eleves"
    xmlns:ds="uri:documents-structures:devoirs-vacances"
    exclude-result-prefixes="xs my"
    version="2.0">
    
    <xsl:template match="ds:catalogue">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Catalogue des produits</title>
            </head>
            <body>
                <h1>Produits</h1>
                <table border="1">
                    <xsl:apply-templates />
                    <!-- ETC. Il faut générer une ligne "tr" pour chaque produit -->
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="produit">
        
        
        <xsl:for-each select=".">
            <tr xmlns="http://www.w3.org/1999/xhtml">
                <td><xsl:value-of select="./text()"/></td>
                <td><xsl:value-of select="./@prix"/> €</td>
                <td><xsl:value-of select="my:calcul(./@prix,document('conversion.xml')/conversion/monnaie[1]/text())"/> $</td>
                <td><xsl:value-of select="my:calcul(./@prix,document('conversion.xml')/conversion/monnaie[2]/text())"/> ¥</td>
                <td><xsl:value-of select="my:calcul(./@prix,document('conversion.xml')/conversion/monnaie[3]/text())"/> ￦</td>
                
                
            </tr>
            
        </xsl:for-each>
        
    </xsl:template>
    
    <xsl:function name="my:calcul">
        <xsl:param name="price" />
        <xsl:param name="rates" />
        <xsl:value-of select="$price*$rates"/>
    </xsl:function>
    
    
    
</xsl:stylesheet>