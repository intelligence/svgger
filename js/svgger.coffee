$ ->
	# Get all img svg as target
	$targets = $('img[src$="svg"]')

	# Loop targets through
	$targets.each ->

		# Cache id and classes
		img_id = this.id
		img_class = $(this).attr('class')

		# Get looped img
		$.get this.src, (data) =>
			
			# Cache received data(svg) and find the svg tag
			$d = $(data).find('svg')

			# Include id and classes if exists
			if img_id? and !!img_id
				$d.attr 'id', img_id

			if img_class? and !!img_class
				$d.attr 'class', img_class
			
			# Replace img with svg data
			$(this).replaceWith $d