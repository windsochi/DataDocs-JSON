datadocs = angular.module('datadocs',[
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive'
])

datadocs.config([ '$routeProvider', 'flashProvider',
  ($routeProvider,flashProvider)->
    flashProvider.errorClassnames.push("alert-danger")
    flashProvider.warnClassnames.push("alert-warning")
    flashProvider.infoClassnames.push("alert-info")
    flashProvider.successClassnames.push("alert-success")

    $routeProvider
      .when('/',
        templateUrl: 'index.html'
        controller: 'DocsController'
      )
])

controllers = angular.module('controllers',[])
