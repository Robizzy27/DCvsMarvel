//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min

"use strict";

(function(){
  angular
  .module ("movie", [
    "ui.router", "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("Movie", [
    "$resource",
    movFactoryFunction
  ])
  .controller("indexCtrl", [
    "Movie",
    indexCtrlFunction
  ])
  .controller("showCtrl", [
    "Movie",
    "$stateParams",
    showCtrlFunction
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("index", {
      url: "/",
      templateUrl: "ng-views/movie.index.html",
      controller: "indexCtrl",
      controllerAs: "indexVM"
    })
    .state("show", {
      url: "/:id",
      templateUrl: "ng-views/movie.show.html",
      controller: "showCtrl",
      controllerAs: "showVM"
    });
  }
  function movFactoryFunction($resource){
    var Movie = $resource("/movies/:id.json", {}, {
      update: {method: "PUT"}
    });
    Movie.all = Movie.query();
    return Movie;
  }

  function indexCtrlFunction(Movie){
    var indexVM = this;
    indexVM.movies = Movie.all;
    indexVM.newMovie = new Movie();
  }

  function showCtrlFunction(Movie, $stateParams){
    var showVM = this;
    Movie.all.$promise.then(function(){
      Movie.all.forEach(function(movie){
        if(movie.id == $stateParams.id){
          showVM.movie = movie;
        }
      });
    });
  }
})();
