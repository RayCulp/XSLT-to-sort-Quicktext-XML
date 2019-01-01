<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- The following statements make the xslt always encapsulate specific elements as CDATA. We have to do this because these elements always use CDATA in the source XML, but the "copy-of" statement ignores CDATA tags and just copies the raw text to the XML output. -->
<xsl:output cdata-section-elements="title"/>
<xsl:output cdata-section-elements="name"/>
<xsl:output cdata-section-elements="body"/>
<xsl:output cdata-section-elements="attachments"/>

<xsl:template match="/">

	<quicktext version="2">

		<filetype>templates</filetype>

		<xsl:for-each select="quicktext/menu">
			
			<menu>
				
				<xsl:for-each select="title">
					<xsl:copy-of select="."/> 
				</xsl:for-each>
				
				<texts>
					<xsl:for-each select="texts/text">
						<xsl:sort select="name"/>
						<xsl:copy-of select="."/> 
					</xsl:for-each>
				</texts>			

			</menu>

		</xsl:for-each>

	</quicktext>

</xsl:template>

</xsl:stylesheet>