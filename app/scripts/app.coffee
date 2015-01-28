'use strict'

###*
 # @ngdoc overview
 # @name angularCoffeeSampleApp
 # @description
 # # angularCoffeeSampleApp
 #
 # Main module of the application.
###
angular
  .module('angularCoffeeSampleApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/test',
        templateUrl: 'views/about.html'
        controller: 'TestCtrl'
      .otherwise
        redirectTo: '/'
