define(['angular'], function(angular) {

  /*Keep in sync with docs/mardown/configuration.md*/

    var config = angular.module('override', []);
    config
        //see configuration.md for howto
        .constant('OVERRIDE', {
          'APP_FLAGS' : {
            'showSearch' : false
          },
          'NAMES' : {
            'title' : 'uw-docs',
            'fname' : 'uw-docs'
          },
          'MISC_URLS' : {
            'rootURL' : '#/',
            'loginURL' : 'https://github.com/UW-Madison-DoIT/uw-docs'
          }
        })

    return config;

});
