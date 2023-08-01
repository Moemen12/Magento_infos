var config = {
    map: {
        '*': {
            Swiper: 'Magento_Theme/swiper/js/swiper.min',
            Global: 'Magento_Theme/js/global.min',

        }
    },
    shim: {
        Swiper: {
            deps: ['jquery']
        },
        Global: {
            deps: ['jquery']
        }

    }
};