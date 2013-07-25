(function() {
  var resize_top_image, threshold;

  $(function() {
    resize_top_image();
    $(window).on("resize", resize_top_image);
    $("#header-about").on("click", function(e) {
      var divY;
      e.preventDefault();
      divY = $(".l-about").position().top;
      return $("html,body").animate({
        scrollTop: divY
      }, 500);
    });
    $("#learn-more").on("click", function(e) {
      var divY;
      e.preventDefault();
      divY = $(".l-about").position().top;
      return $("html,body").animate({
        scrollTop: divY
      }, 500);
    });
    $("#header-portfolio").on("click", function(e) {
      var divY;
      e.preventDefault();
      divY = $(".l-portfolio").position().top;
      return $("html,body").animate({
        scrollTop: divY
      }, 500);
    });
    $("#header-resume").on("click", function(e) {
      var divY;
      e.preventDefault();
      divY = $(".l-resume").position().top;
      return $("html,body").animate({
        scrollTop: divY
      }, 500);
    });
    return $("#header-connect").on("click", function(e) {
      var divY;
      e.preventDefault();
      divY = $(".l-connect").position().top;
      return $("html,body").animate({
        scrollTop: divY
      }, 500);
    });
  });

  /*
  	$(window).on "scroll", ->
  		if($(@).scrollTop() >= threshold)
  			$(".l-header").fadeIn 500 , ->
  				$(@).removeClass "hide"
  		else
  			$(".l-header").fadeOut 200, ->
  				$(@).addClass "hide"
  */


  threshold = 0;

  resize_top_image = function() {
    var earlyAccessHeight, finalHeight, minHeight, windowHeight;
    windowHeight = $(window).height();
    threshold = windowHeight;
    earlyAccessHeight = $(".l-splash--nav").height();
    minHeight = parseInt($(".l-splash--image").css("min-height"));
    /*
    	if (windowHeight - earlyAccessHeight) > minHeight
    		finalHeight = (windowHeight - earlyAccessHeight)
    	else
    		finalHeight = minHeight
    */

    finalHeight = (windowHeight - earlyAccessHeight) > minHeight ? windowHeight - earlyAccessHeight : minHeight;
    return $(".l-splash--container, .l-splash--image").height(finalHeight);
  };

}).call(this);
