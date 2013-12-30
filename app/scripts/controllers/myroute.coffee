'use strict'

angular.module('angularFullstackApp')
  .controller 'MyrouteCtrl', ($scope, $http) ->
    $http.get('/api/awesomeThings').success (awesomeThings) ->
      $scope.awesomeThings = awesomeThings