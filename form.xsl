<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <head>
		<title><xsl:value-of select="/dataInputForm/title/caption"/></title>
		</head>
	    <body>
        <form>
		    <xsl:for-each select="/dataInputForm/textbox">
				<xsl:value-of select="./caption"/>
				<input type="{/dataInputForm/textbox/@datatype}" name="{./name}" size="{./size}" maxlength="{./maxlength}"/><br></br>
            </xsl:for-each>
			
			<xsl:for-each select="/dataInputForm/checkboxes">
			    <p><xsl:value-of select="./caption"/></p>
			    <xsl:for-each select="/dataInputForm/checkboxes/checkboxgroup/checkbox">
					<input type="checkbox" name="{./name}" value="{./value}"/><xsl:value-of select="./caption"/><br></br>
                </xsl:for-each>
			</xsl:for-each>
			
			<xsl:for-each select="/dataInputForm/select">
			    <p><xsl:value-of select="./caption"/></p>
			    <select name="{./name}"><br></br>
			    <xsl:for-each select="/dataInputForm/select/options/option">
					<option value="{./values}" ><xsl:value-of select="./caption"/></option><br></br>
                </xsl:for-each>
				</select>
			</xsl:for-each>
			
			<xsl:for-each select="/dataInputForm/multiselect">
			    <p><xsl:value-of select="./caption" /></p>
			    <select name="{./name}" size="{./size}"><br></br>
			    <xsl:for-each select="/dataInputForm/multiselect/options/option">
					<option value="{./values}" ><xsl:value-of select="./caption"/></option><br></br>
                </xsl:for-each>
				</select><br></br>
			</xsl:for-each>
			
			<xsl:for-each select="/dataInputForm/radio">
			    <p><xsl:value-of select="./caption"/></p>
			    <xsl:for-each select="/dataInputForm/radio/radiogroup/radioelement">
					<input type="radio" value="{./value}"><xsl:value-of select="./caption"/></input><br></br>
                </xsl:for-each>
			</xsl:for-each>
			
			<xsl:for-each select="/dataInputForm/submit">
				<input type="submit" value="{./caption}"/><br></br>
            </xsl:for-each>
			<xsl:for-each select="/dataInputForm/reset">
				<input type="reset" value="{./caption}"/><br></br>
            </xsl:for-each>
			
          
        </form>
	    </body>
	</xsl:template>
</xsl:stylesheet>