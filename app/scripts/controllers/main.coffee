# 'use strict'

# angular.module('angularFullstackApp')
#   .controller 'MainCtrl', ($scope, $http) ->
#     $scope.foo = "fooooo"
    # $http.get('/api/awesomeThings').success (awesomeThings) ->
    #   $scope.awesomeThings = awesomeThings

angular.module('angularFullstackApp')
.controller 'MainCtrl',
  class Controller
    constructor: (@$http) ->
      setThings = =>
        # @contactService.get().then (results) =>
        @$http.get('/api/awesomeThings').success (awesomeThings) ->
          # @contacts = results
          @awesomeThings = awesomeThings
      @foo = "foobarss"
      @$http.get('/api/awesomeThings').success (awesomeThings) ->
        @awesomeThings = awesomeThings
      # @alertMe = ->
      #   setTimeout ->
      #     alert "You've selected the alert tab!"


      # @navType = "pills"

# app = angular.module 'angularFullstackApp', []

.controller 'TodoCtrl',
  class TodoCtrl
    list: [
      text: "learn coffescript"
      done: false
    ,
      text: "learn angular"
      done: true
    ]

    addTodo: ->
      @list.push
        text: @input
        done: false
      @input = ''

    remaining: ->
      count = 0
      for todo in @list
        count += if todo.done then 0 else 1
      count

    archive: ->
      oldList = @list
      @list = []
      for todo in oldList
        unless todo.done
          @list.push todo