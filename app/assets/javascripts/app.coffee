datadocs = angular.module('datadocs',[
  'templates',
  'ngRoute',
  'ngResource',
  'controllers'
])

datadocs.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: 'index.html'
        controller: 'DocsController'
      )
])

controllers = angular.module('controllers',[])
