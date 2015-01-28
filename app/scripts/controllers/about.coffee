'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeSampleApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the angularCoffeeSampleApp
###
angular.module('angularCoffeeSampleApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
