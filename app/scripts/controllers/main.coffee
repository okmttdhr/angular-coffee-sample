'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeSampleApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularCoffeeSampleApp
###
angular.module('angularCoffeeSampleApp')
  .controller 'MainCtrl', ($scope, localStorageService) ->
    todosInStore = localStorageService.get('todos')

    $scope.todos = todosInStore || [];

    $scope.$watch "todos", (->
      localStorageService.set "todos", $scope.todos
      return
    ), true

    $scope.addTodo = ->
      $scope.todos.push title: $scope.todo
      $scope.todo = ""
      return

    $scope.removeTodo = (index) ->
      $scope.todos.splice index, 1
      return
