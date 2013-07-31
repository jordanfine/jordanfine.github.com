$ ->
	##$(".l-splash--image").backstretch "public/img/profile.png"

	resize_page()
	$(window).on "resize", resize_page

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

	$(".l-top").on "click", (e) ->
		e.preventDefault()
		$("html,body").animate {scrollTop: 0}, 500

	$(window).on "scroll", ->
		if($(@).scrollTop() >= threshold)
			$(".l-top").fadeIn 200 , ->
				$(@).removeClass "hide"
		else
			$(".l-top").fadeOut 200, ->
				$(@).addClass "hide"

	


threshold = 0

resize_page = ->
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


	##Resize portfolio images
	console.log "images"
	windowWidth = $(window).width()

	$(".l-portfolio--gatherimage, .l-portfolio--hciimage").width(windowWidth)
