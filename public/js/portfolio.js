(function() {
  var resize_page, threshold;

  $(function() {
    var image;
    resize_page();
    image = new Image;
    image.src = "public/img/profile-pug.png";
    $(window).on("resize", resize_page);
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
    $("#header-connect").on("click", function(e) {
      var divY;
      e.preventDefault();
      divY = $(".l-connect").position().top;
      return $("html,body").animate({
        scrollTop: divY
      }, 500);
    });
    $(".l-top").on("click", function(e) {
      e.preventDefault();
      return $("html,body").animate({
        scrollTop: 0
      }, 500);
    });
    return $(window).on("scroll", function() {
      if ($(this).scrollTop() >= threshold) {
        return $(".l-top").fadeIn(200, function() {
          return $(this).removeClass("hide");
        });
      } else {
        return $(".l-top").fadeOut(200, function() {
          return $(this).addClass("hide");
        });
      }
    });
  });

  threshold = 0;

  resize_page = function() {
    var earlyAccessHeight, finalHeight, minHeight, windowHeight, windowWidth;
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
    $(".l-splash--container, .l-splash--image").height(finalHeight);
    console.log("images");
    windowWidth = $(window).width();
    return $(".l-portfolio--gatherimage, .l-portfolio--hciimage").width(windowWidth);
  };

}).call(this);
