//= require jquery2
//= require jquery_ujs
//= require foundation
//= require mixitup
//= require magnific-popup

Foundation.global.namespace = "";

function application() {
  $(document).foundation();
};

$(document).ready(application);
$(document).on("page:load", application);
