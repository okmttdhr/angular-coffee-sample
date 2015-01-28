'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeSampleApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the angularCoffeeSampleApp
###
angular.module('angularCoffeeSampleApp')
  .controller "AboutCtrl", [
    "$scope"
    ($scope) ->
      console.log "AboutCtrl: in"
      $scope.foo = "Hello!"
      $scope.note = "Hello!"
      $scope.updateFoo = (newFoo) ->
        console.log "newFoo: " + newFoo
        $scope.foo = newFoo
        return

      $scope.callHome = (message) ->
        alert message
        return

      $scope.showMessage = (note) ->
        alert note
        return
  ]
