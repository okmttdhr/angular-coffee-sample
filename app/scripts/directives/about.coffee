'use strict'

###*
 # @ngdoc directive
 # @name angularCoffeeSampleApp.directive:about
 # @description
 # # about
###
angular.module('angularCoffeeSampleApp')
  .directive "sampleDirective", ->
    console.log "sampleDirective directive: in"
    scope:
      attributeNote: "@"
      bindingNote: "="
      alertMessage: "&"

    template: "<hr>" + "<p>get: {{attributeNote}}</p>" + "<div>set: <input type=\"text\" ng-model=\"attributeNote\"><i>// This does not update the parent scope.</i></div>" + "<hr>" + "<p>get: {{bindingNote}}</p>" + "<div>set: <input type=\"text\" ng-model=\"bindingNote\"><i>// This does update the parent scope.</i></div>" + "<hr>" + "<p>attributeNote: <button class=\"btn btn-primary\" ng-click=\"alertMessage({note: attributeNote})\">alert</button></p>" + "<p>bindingNote: <button class=\"btn btn-primary\" ng-click=\"alertMessage({note: bindingNote})\">alert</button></p>"
