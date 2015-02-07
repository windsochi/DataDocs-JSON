datadocs = angular.module('datadocs',[
  'templates',
  'ngRoute',
  'controllers',
])

datadocs.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'RecipesController'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("RecipesController", [ '$scope',
  ($scope)->
])
