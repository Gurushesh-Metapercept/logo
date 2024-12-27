<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="@*|node()">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="@* except @class | node()"/>
        </xsl:copy>
    </xsl:template>
    <!--<xsl:strip-space elements="*"/>-->
    <xsl:output indent="yes"/>
    <!--Topic to Concept-->


    <xsl:template match="map">
        <xsl:text>
</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE map PUBLIC "-//OASIS//DTD DITA Map//EN" "map.dtd"&gt;</xsl:text><xsl:text>
</xsl:text>
        <map>
            <xsl:if test="@id">
                <xsl:attribute name="id" select="@id"/>
            </xsl:if>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:attribute name="rev">1.0</xsl:attribute>
            <xsl:apply-templates/>
        </map>
    </xsl:template>
    
    <xsl:template match="topic"><xsl:text>
</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE concept PUBLIC "-//OASIS//DTD DITA Concept//EN" "concept.dtd"&gt;</xsl:text><xsl:text>
</xsl:text>
        <concept>
            <xsl:if test="@id">
                <xsl:attribute name="id" select="@id"/>
            </xsl:if>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:apply-templates/>
        </concept>
    </xsl:template>


    <xsl:template match="concept"><xsl:text>
</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE concept PUBLIC "-//OASIS//DTD DITA Concept//EN" "concept.dtd"&gt;</xsl:text><xsl:text>
</xsl:text>
        <concept>
            <xsl:if test="@id">
                <xsl:attribute name="id" select="@id"/>
            </xsl:if>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:apply-templates/>
        </concept>
    </xsl:template>
    
    
    <xsl:template match="body">
        <conbody>
            <xsl:apply-templates/>
        </conbody>
    </xsl:template>


    
    
    <xsl:template match="task"><xsl:text>
</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE task PUBLIC "-//OASIS//DTD DITA Task//EN" "task.dtd"&gt;</xsl:text><xsl:text>
</xsl:text>
        <task>
            <xsl:if test="@id">
                <xsl:attribute name="id" select="@id"/>
            </xsl:if>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:apply-templates/>
        </task>
    </xsl:template>
    
    
    <xsl:template match="troubleshooting"><xsl:text>
</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE troubleshooting PUBLIC "-//OASIS//DTD DITA Troubleshooting//EN" "troubleshooting.dtd"&gt;</xsl:text><xsl:text>
</xsl:text>
        <troubleshooting>
            <xsl:if test="@id">
                <xsl:attribute name="id" select="@id"/>
            </xsl:if>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:apply-templates/>
        </troubleshooting>
    </xsl:template>
    
    
    <xsl:template match="glossentry"><xsl:text>
</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE glossentry PUBLIC "-//OASIS//DTD DITA Glossary Entry//EN" "glossaryentry.dtd"&gt;</xsl:text><xsl:text>
</xsl:text>
        <glossentry>
            <!--<xsl:if test="@id">-->
            <xsl:attribute name="id" select="concat('glossentry_sbv_hvr_', generate-id())"/>
            <!--</xsl:if>-->
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:apply-templates/>
        </glossentry>
    </xsl:template>
    
    
    <xsl:template match="section">
        <section>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
        </section>
    </xsl:template>
    
    <!--<xsl:template match="mapref">
        <mapref>
            <xsl:copy-of select="@* except @navtitle"/>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:if test="@navtitle">
                <topicmeta>
                    <navtitle><xsl:value-of select="@navtitle"/></navtitle>
                </topicmeta>
            </xsl:if>
            
            <xsl:apply-templates/>
        </mapref>
    </xsl:template>-->
    
    <!--<xsl:template match="topicref">
        <topicref>
            <xsl:copy-of select="@* except @navtitle"/>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:if test="@navtitle">
                <topicmeta>
                    <navtitle><xsl:value-of select="@navtitle"/></navtitle>
                </topicmeta>
            </xsl:if>
            
            <xsl:apply-templates/>
        </topicref>
    </xsl:template>-->
    
    <!--<xsl:template match="image">
        <image>
            <xsl:copy-of select="@*"/>
            <xsl:if test="not(parent::fig)">
                <xsl:attribute name="placement" select="'inline'"/>
            </xsl:if>
            <xsl:apply-templates/>
        </image>
    </xsl:template>-->
    
    
</xsl:stylesheet>
