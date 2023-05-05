<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!--
  release.xsl

  Modifies the changelog in preparation for a release by removing the
  "in development" moniker from the <section> containing the release
  and also inserting the asf-id of the release manager in the "name"
  of the release.
-->
  <xsl:param name="asfid" select="'schultz'" />
  <xsl:template match="section[@rtext]/@name">
    <xsl:attribute name="name">
      <xsl:value-of select="substring-before(., '(')" />
      <xsl:text>(</xsl:text>
      <xsl:value-of select="$asfid" />
      <xsl:text>)</xsl:text>
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="section/@rtext">
    <!-- Produce no content, remove @rtext attribute -->
  </xsl:template>
  <xsl:template match="*|@*|processing-instruction()|text()|comment()">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|processing-instruction()|text()|comment()" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
