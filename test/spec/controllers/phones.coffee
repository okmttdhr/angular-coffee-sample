'use strict'

describe 'Controller: PhonesCtrl', ->

  # load the controller's module
  beforeEach module 'angularCoffeeSampleApp'

  PhonesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PhonesCtrl = $controller 'PhonesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
