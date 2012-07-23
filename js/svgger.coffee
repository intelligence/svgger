$(window).ready ->
	
	# Get all img svg as target
	$targets = $('img[src$="svg"]').hide()

	# Loop targets through
	$targets.each ->

		# Get looped img
		$.get this.src, (data) =>

			# Cache received data(svg) and find the svg tag
			$d = $(data).find('svg')
			# Cache attributes
			attr = this.attributes

			# Extend attributes from svg
			$.extend attr, $d[0].attributes

			# Loop through every attribute
			$(attr).each ->
				nName = this.nodeName
				nValue = this.nodeValue

				if (nName != 'src' and nName != 'style')
					$d.attr nName, nValue
				
			# Replace img with svg data
			# 'this' refers to each this :)
			$(this).replaceWith $d