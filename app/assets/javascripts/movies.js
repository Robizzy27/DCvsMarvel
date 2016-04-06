//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min

"use strict";

(function(){

  angular
  .module("movie", [
    "ui.router",
    "ngResource"
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
        templateUrl: "ng-views/index.html",
        controller: "indexCtrl",
        controllerAs: "indexVM"
      })
      .state("show", {
        url: "/:id",
        templateUrl: "ng-views/show.html",
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

    function movFormFunction(Movie){
    return{
      templateUrl: "ng-views/movie.form.html",
      scope: {
        movie:  "=",
        formMethod:   "@"
      },
      link: function(scope){
        scope.create = function(){
          Movie.save(scope.movie, function(response){
            Movie.all.push(response);
          });
        }
        scope.update = function(){
          Movie.update({id: scope.movie.id}, scope.movie, function(response){
            console.log("Successful");
          });
        }
      }
    }
  }

})();
