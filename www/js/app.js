// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.controllers'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    // for form inputs)
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
      cordova.plugins.Keyboard.disableScroll(true);

    }
    if (window.StatusBar) {
      // org.apache.cordova.statusbar required
      StatusBar.styleDefault();
    }
  });
})

.config(function($stateProvider, $urlRouterProvider, $ionicConfigProvider) {
  $ionicConfigProvider.tabs.position("bottom");
  $stateProvider


    .state('app', {
    url: '/app',
    abstract: true,
    templateUrl: 'templates/menu.html',
    controller: 'AppCtrl'
  })


  .state('app.clientes', {
    url: '/clientes',
    views: {
      'menuContent': {
        templateUrl: 'templates/clientes.html',
        controller: 'clientes'
       
      }
    }
  })

  .state('app.prestamos', {
      url: '/prestamos',
      views: {
        'menuContent': {
          templateUrl: 'templates/prestamos.html',
          controller: 'prestamos'
        }
      }
    })
   .state('app.abonos', {
      url: '/abonos',
      views: {
        'menuContent': {
          templateUrl: 'templates/abonos.html',
          controller: 'abonos'
        }
      }
    })
    .state('app.empleados', {
      url: '/empleados',
      views: {
        'menuContent': {
          templateUrl: 'templates/empleados.html',
          controller: 'empleados'
        }
      }
    })
          .state('app.finanzas', {
      url: '/finanzas',
      views: {
        'menuContent': {
          templateUrl: 'templates/finanzas.html',
          controller: 'PlaylistCtrl'
        }
      }
    })
      .state('app.configuracion', {
      url: '/finanzas',
      views: {
        'menuContent': {
          templateUrl: 'templates/configuracion.html',
          controller: 'PlaylistCtrl'
        }
      }
    })
      .state('app.registrarcliente', {
      url: '/registrarcliente',
      views: {
        'menuContent': {
          templateUrl: 'templates/registrarcliente.html',
          controller: 'registrarcliente'
        }
      }
    })
      .state('app.registrarempleado', {
      url: '/registrarempleado',
      views: {
        'menuContent': {
          templateUrl: 'templates/registrarempleado.html',
          controller:'registrarempleado'
        }
      }
    })
          .state('app.nuevoprestamo', {
      url: '/nuevoprestamo',
      views: {
        'menuContent': {
          templateUrl: 'templates/nuevoprestamo.html',
          controller:'nuevoprestamo'
        }
      }
    })
  .state('app.single', {
    url: '/playlists/:playlistId',
    views: {
      'menuContent': {
        templateUrl: 'templates/playlist.html',
        controller: 'PlaylistCtrl'
      }
    }
  });
  // if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise('/app/clientes');
});
