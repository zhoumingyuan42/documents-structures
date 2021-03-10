<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" office:version="1.3"
    xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0">
    
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="table:table-cell[2]">
        <xsl:if test="not(./child::*)">
            <table:table-cell office:value-type="string" calcext:value-type="string">
                <text:p>
                    Non renseigné
                </text:p>
            </table:table-cell>
        </xsl:if>
        
        <xsl:if test="./child::*">
            <xsl:copy>
                <xsl:apply-templates />
            </xsl:copy>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>