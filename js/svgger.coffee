
# It's Svgger time!!
$ ->
	
	# Get all img svg as target
	$targets = $('img[src$="svg"]').hide()

	# Loop targets through
	$targets.each (i, item) ->

		# How fast?
		console.time 'svg'+(i+1)

		# Get looped img
		$.get(this.src)

		# Svg received succesfully
		.success (data) =>

			# Cache received data(svg) and find the svg tag
			$svg = $(data).find('svg')

			# Cache attributes
			_attr = this.attributes

			# Extend attributes from svg image to inline svg
			$.extend _attr, $svg[0].attributes
				
			# Ignore list
			ignore = ['src', 'style']

			# Loop through every attribute
			for a in _attr
				nName = a.nodeName
				nValue = a.nodeValue

				if !$.inArray nName, ignore
					$svg.attr nName, nValue
				
			# Replace img with svg data
			$(this).replaceWith $svg

		console.timeEnd 'svg'+(i+1)