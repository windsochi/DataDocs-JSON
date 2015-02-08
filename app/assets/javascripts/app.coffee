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

docs = [
  {
    id: 1
    date_of_issue: '2001-02-24'
    title: 'Crankshaft failure'
  }
]
controllers = angular.module('controllers',[])
controllers.controller("DocsController", [ '$scope', '$routeParams', '$location', '$resource',
  ($scope,$routeParams,$location,$resource)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)
    Doc = $resource('/docs/:docId', { docId: "@id", format: 'json' })

    if $routeParams.keywords
      Doc.query(keywords: $routeParams.keywords, (results)-> $scope.docs = results)
    else
      $scope.docs = []
])
