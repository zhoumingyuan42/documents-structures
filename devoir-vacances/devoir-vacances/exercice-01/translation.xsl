<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:mode on-no-match="shallow-skip"/>
    
    <xsl:template match="translation">
        <xliff version="2.1" xmlns="urn:oasis:names:tc:xliff:document:2.0" srcLang="fr" trgLang="de">
            <file id="exerice-01">
                <xsl:apply-templates />
            </file>
        </xliff>
    </xsl:template>
    
    <xsl:template match="key">
        <unit xmlns="urn:oasis:names:tc:xliff:document:2.0">
            <xsl:attribute name="id"><xsl:number/></xsl:attribute>
            <segment>
                <source><xsl:value-of select="./val[@lang='fr_FR']"/></source>
                <target><xsl:value-of select="./val[@lang='de_DE']"/></target>
            </segment>
        </unit>
    </xsl:template>
    
</xsl:stylesheet>