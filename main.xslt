<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="common.xslt"/>
  
  <!-- Import specific XSLTs for different types of content -->
  <xsl:import href="movie.xslt"/>
  <xsl:import href="tvshow.xslt"/>
  <xsl:import href="adult.xslt"/>
  <xsl:import href="anime.xslt"/>
  <xsl:import href="video.xslt"/>
  <xsl:import href="music.xslt"/>
  <xsl:import href="audiobook.xslt"/>
  <xsl:import href="podcast.xslt"/>
  <xsl:import href="musicvideo.xslt"/>

  <!-- Template to match the root element -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="movie">
        <xsl:apply-templates select="movie"/>
      </xsl:when>
      <xsl:when test="tvshow">
        <xsl:apply-templates select="tvshow"/>
      </xsl:when>
      <xsl:when test="adult">
        <xsl:apply-templates select="adult"/>
      </xsl:when>
      <xsl:when test="anime">
        <xsl:apply-templates select="anime"/>
      </xsl:when>
       <xsl:when test="video">
        <xsl:apply-templates select="video"/>
      </xsl:when>
      <xsl:when test="music">
        <xsl:apply-templates select="music"/>
      </xsl:when>
      <xsl:when test="audiobook">
        <xsl:apply-templates select="audiobook"/>
      </xsl:when>
      <xsl:when test="podcast">
        <xsl:apply-templates select="podcast"/>
      </xsl:when>
      <xsl:when test="musicvideo">
        <xsl:apply-templates select="musicvideo"/>
      </xsl:when>
      <xsl:otherwise>
        <p>Unknown content type</p>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
