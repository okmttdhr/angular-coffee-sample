'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeSampleApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularCoffeeSampleApp
###
angular.module('angularCoffeeSampleApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
