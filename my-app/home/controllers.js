'use strict';

define(['angular','require', 'marked'], function(angular, require, marked) {
  var app = angular.module('docs.main.controllers', []);

  app.controller('MarkdownPageController', ['NAMES', '$scope', '$routeParams', function(NAMES, $scope, $routeParams) {
    $scope.title = $routeParams.markdownfilename;
    if($scope.title) {
      $scope.title = $scope.title.replace('-',' ');
    }
    $scope.filename = 'markdown/' + $routeParams.markdownfilename + '.md';

  } ]);

  return app;

});
