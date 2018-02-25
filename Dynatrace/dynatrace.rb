
# 2018 rumi
require 'xml/xslt'

xslt = XML::XSLT.new()
xslt.xml = "dynatrace.xml"
xslt.xsl = "dynatrace.xsl"

out = xslt.serve()
print out;