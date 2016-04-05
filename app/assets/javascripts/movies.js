//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min

"use strict";

(function(){

  angular
  .module("movies", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("MovieFactory", [
    "$resource",
    ResourceFactoryFunction
  ])
  .controller("indexController", [
    "MovieFactory",
    indexCtrlFunction
  ]);
  function RouterFunction($stateProvider){
    $stateProvider
    .state("index", {
      url: "/",
      templateUrl: "ng-views/index.html",
      controller: "indexController",
      controllerAs: "indexVM"
    });
  }
  function ResourceFactoryFunction($resource){
    var Movie = $resource("http://localhost:3000/movies/:id.json", {}, {
      update: {method: "PUT"}
    });
    Movie.all = Movie.query()
    return Movie;
  }
  function indexCtrlFunction(MovieFactory){
     var indexVM = this;
     indexVM.movies = MovieFactory.all;
    // indexVM.Movie = new Movie();
  }


})();
