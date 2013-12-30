'use strict'

angular.module('angularFullstackApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'partials/main'
        controller: 'MainCtrl'
      .when '/myroute',
        templateUrl: 'partials/myroute'
        controller: 'MyrouteCtrl'
      .otherwise
        redirectTo: '/'
    $locationProvider.html5Mode(true)