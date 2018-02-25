<?xml version="1.0" encoding="UTF-8"?>
<!-- 2018 rumi -->
<!--  
We decide not to use the auto formatting, in order to control what will go on one line. This is to avoid line to be unnecessarily split
which can cause later some challenges with the pipeline like logstash that ingest one line at the time.
<xsl:output method="text" indent="yes" xalan:indent-amount="4"/>
-->
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:variable name="newline">
		<xsl:text>
</xsl:text>
	</xsl:variable>
	<xsl:template match="/">
		<xsl:variable name="dashname" select="dashboardreport/@name" />
		<xsl:variable name="user"
			select="dashboardreport/reportheader/reportdetails/user/text()" />
		<xsl:for-each select="dashboardreport/data/chartdashlet/measures/measure">
			<xsl:for-each select="measure">
				<xsl:variable name="aggregation" select="@aggregation" />
				<xsl:variable name="unit" select="@unit" />
				<xsl:for-each select="measurement">
					<xsl:copy>
						<xsl:copy-of select="$dashname" />
						<xsl:attribute name="user">
							<xsl:copy-of select="$user" />
						</xsl:attribute>
						<xsl:copy-of select="@*" />
						<xsl:copy-of select="$aggregation" />
						<xsl:copy-of select="$unit" />
					</xsl:copy>
					<xsl:value-of select="$newline" />
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

