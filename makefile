################################################################################################

#       Filename: template-revealjs.html

#       Author: Stefan Lüdtke

#       Created: Thursday 04 September 2014 23:59:17 CEST

################################################################################################
index.html: index.md makefile default.revealjs custom.css
	pandoc  -t  html5\
    --template=default.revealjs \
    --include-in-header custom.css \
  	--standalone --section-divs \
   	--variable theme="night" \
   	--variable transition="fade" \
  	$< -o  $@

