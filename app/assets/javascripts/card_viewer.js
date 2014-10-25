'use strict';

angular.module('cardViewer',
  ['ngAnimate',
   'ngCookies',
   'ngTouch',
   'ngSanitize',
   'ngResource',
   'ui.router',
   'famous.angular' ])
  .config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: '/partials/main.html',
        controller: 'MainCtrl'
      })
    $urlRouterProvider.otherwise('/');
  })
;
