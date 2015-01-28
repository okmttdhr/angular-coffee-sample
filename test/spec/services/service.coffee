'use strict'

describe 'Service: service', ->

  # load the service's module
  beforeEach module 'angularCoffeeSampleApp'

  # instantiate service
  service = {}
  beforeEach inject (_service_) ->
    service = _service_

  it 'should do something', ->
    expect(!!service).toBe true
