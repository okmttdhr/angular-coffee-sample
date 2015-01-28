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
    'ngTouch',
    'ui.sortable',
    'LocalStorageModule',
  ])
  .config [
    "localStorageServiceProvider"
    (localStorageServiceProvider) ->
      localStorageServiceProvider.setPrefix "ls"
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/phones',
        templateUrl: 'views/phones.html'
        controller: 'PhonesCtrl'
      .when '/phones/:phoneId',
        templateUrl: 'views/phone-detail.html'
        controller: 'PhoneDetailCtrl'
      .otherwise
        redirectTo: '/'
