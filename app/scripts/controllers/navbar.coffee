'use strict'

angular.module('angularFullstackApp')
	.controller 'NavbarCtrl', ($scope, $location) ->
	  $scope.menu = [
	    title: 'Home'
	    link: '/'
	  ,
	    title: 'About'
	    link: '#'
	  ,
	    title: 'Contact'
	    link: '#'
	  ]
	  $scope.isActive = (route) ->
	    route is $location.path()