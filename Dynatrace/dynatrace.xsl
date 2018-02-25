<?xml version="1.0" encoding="UTF-8"?>
<!-- 2018 rumi -->
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

