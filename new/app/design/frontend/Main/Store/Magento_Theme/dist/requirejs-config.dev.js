"use strict";

var config = {
  map: {
    '*': {
      Swiper: 'Magento_Theme/swiper/js/swiper.min',
      Global: 'Magento_Theme/js/global.min',
      main: 'Magento_Theme/js/main'
    }
  },
  shim: {
    Swiper: {
      deps: ['jquery']
    },
    Global: {
      deps: ['jquery']
    },
    main: {
      deps: ['jquery']
    }
  }
};