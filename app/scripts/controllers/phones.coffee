'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeSampleApp.controller:PhonesCtrl
 # @description
 # # PhonesCtrl
 # Controller of the angularCoffeeSampleApp
###
angular.module('angularCoffeeSampleApp')
  .controller 'PhonesCtrl', [
    "$scope"
    "Phone"
    ($scope, Phone) ->
      $scope.phones = Phone.list
  ]
  .controller "PhoneDetailCtrl", [
    "$scope"
    "$routeParams"
    "Phone"
    ($scope, $routeParams, Phone) ->
      $scope.phone = Phone.get($routeParams.phoneId)
  ]
