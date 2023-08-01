"use strict";

require(['main', 'Swiper'], function ($, Swiper) {
  $(document).ready(function () {
    swiper = new Swiper(".mySwipercategory", {
      slidesPerView: 4,
      pagination: {
        el: ".swiper-pagination",
        clickable: true
      }
    });
  });
});