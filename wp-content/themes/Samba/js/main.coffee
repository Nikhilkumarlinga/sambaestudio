$ ->
	$window = $(window)
	$body = $('body')
	is_mobile = false

	$("a[href$='.jpg'], a[href$='.png'], a[href$='.gif'], a[href$='.jpeg']").attr('rel', 'photo-gallery').fancybox()
	
	$("a[href='#']").on('click', (e)->
		e.preventDefault()
	)

	$('nav.tree_menu a.more_content').on('click', (e)->
		e.preventDefault()
		$(@).siblings('ul').slideToggle()
	).siblings('ul').hide()

	pageResize = ->
		if $window.width() <= 639
			if not is_mobile
				is_mobile = true
				is_mobile
		else
			if is_mobile
				is_mobile = false
				is_mobile
	$(window).on("resize", pageResize)

	pageResize()