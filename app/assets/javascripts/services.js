function services() {
  $("#services").mixItUp({
    effects: "fade scale rotateZ"
  });
  
	$("inner").magnificPopup({
    delegate: "a",
    type: "image",
    tLoading: "Loading image #%curr%...",
    mainClass: "mfp-img-mobile",
    gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [0, 1]
    },
    image: {
      tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
      titleSrc: function(item) {
        return item.el.attr("title");
      }
    }
  });
}

$(document).ready(services);
$(document).on('page:load', services);
