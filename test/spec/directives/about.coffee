'use strict'

describe 'Directive: about', ->

  # load the directive's module
  beforeEach module 'angularCoffeeSampleApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<about></about>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the about directive'
