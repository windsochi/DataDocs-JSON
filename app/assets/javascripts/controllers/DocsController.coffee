controllers = angular.module('controllers')
controllers.controller("DocsController", [ '$scope', '$routeParams', '$location', '$resource',
  ($scope,$routeParams,$location,$resource)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)
    Doc = $resource('/docs/:docId', { docId: "@id", format: 'json' })

    if $routeParams.keywords
      Doc.query(keywords: $routeParams.keywords, (results)-> $scope.docs = results)
    else
      $scope.docs = []

    $scope.view = (docId)-> $location.path("/docs/#{docId}")

    $scope.newDoc = -> $location.path("/docs/new")
    $scope.edit      = (docId)-> $location.path("/docs/#{docId}/edit")
])
