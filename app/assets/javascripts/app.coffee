datadocs = angular.module('datadocs',[
  'templates',
  'ngRoute',
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
controllers.controller("DocsController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.docs = docs.filter (doc)-> doc.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.docs = []
])
