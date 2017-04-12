<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table align="center" style="text-align:center;">
		<xsl:for-each select="list/product">
			<tr>
				<td style="padding-bottom:20px;">
					<img class="img-prod-thumbnail">
						<xsl:attribute name="src"><xsl:value-of select="image"/></xsl:attribute>
						<xsl:attribute name="class">img-prod-thumbnail</xsl:attribute>
					</img>

					<h3 class="title"><xsl:value-of select="title"/></h3>

					<ul class="text" style="list-style-type:none; ">
						<li class="txt-prod-desc"><xsl:value-of select="description"/></li>
						<li class="discount">Discount: <xsl:value-of select="discount"/>%</li>
						<li class="price">RM: <xsl:value-of select="price"/></li>
					</ul>
				</td>
			</tr>
		</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>