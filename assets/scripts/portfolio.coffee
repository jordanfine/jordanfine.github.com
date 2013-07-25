$ ->
	##$(".l-splash--image").backstretch "public/img/profile.png"

	resize_top_image()
	$(window).on "resize", resize_top_image
	$("#header-about").on "click", (e) ->
		e.preventDefault()
		divY = $(".l-about").position().top
		$("html,body").animate {scrollTop: divY}, 500

	$("#learn-more").on "click", (e) ->
		e.preventDefault()
		divY = $(".l-about").position().top
		$("html,body").animate {scrollTop: divY}, 500

	$("#header-portfolio").on "click", (e) ->
		e.preventDefault()
		divY = $(".l-portfolio").position().top
		$("html,body").animate {scrollTop: divY}, 500

	$("#header-resume").on "click", (e) ->
		e.preventDefault()
		divY = $(".l-resume").position().top
		$("html,body").animate {scrollTop: divY}, 500

	$("#header-connect").on "click", (e) ->
		e.preventDefault()
		divY = $(".l-connect").position().top
		$("html,body").animate {scrollTop: divY}, 500
	
###
	$(window).on "scroll", ->
		if($(@).scrollTop() >= threshold)
			$(".l-header").fadeIn 500 , ->
				$(@).removeClass "hide"
		else
			$(".l-header").fadeOut 200, ->
				$(@).addClass "hide"
###

	


threshold = 0

resize_top_image = ->
	windowHeight = $(window).height()
	threshold = windowHeight
	earlyAccessHeight = $(".l-splash--nav").height()

	minHeight = parseInt($(".l-splash--image").css("min-height"))

	###
	if (windowHeight - earlyAccessHeight) > minHeight
		finalHeight = (windowHeight - earlyAccessHeight)
	else
		finalHeight = minHeight
	###

	finalHeight = if ((windowHeight - earlyAccessHeight) > minHeight) then (windowHeight - earlyAccessHeight) else minHeight

	$(".l-splash--container, .l-splash--image").height(finalHeight)
