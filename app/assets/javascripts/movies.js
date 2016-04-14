//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min
"use strict";

(function(){
console.log("in movie ng");
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
  ])
  .run(["$state", function($state){
    console.log("kickstart");
    $state.transitionTo("show");
  }]);

  // mms: starting here, most of the indentation is off, making it a bit harder for me to parse.
  function RouterFunction($stateProvider){
      $stateProvider
      .state("show", {
        url: "/movies/:id/",
        templateUrl: "/ng-views/movies/show.html",
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
      console.log("showCtrlFunction", $stateParams);
      console.log(Movie.all);
      // mms: If you leave commented code, indicate why you are leaving it in.  If there's no reason, delete it.
      // if($stateParams.id == undefined){
      //   $stateParams.id = 5;
      // }
      // var id;
      // $stateParams.init = function(id){
      //   console.log('setting id to '+id)
      //   $stateParams.id = id
      // }
      Movie.all.$promise.then(function(){
        Movie.all.forEach(function(movie){
          if(movie.id == $stateParams.id){
            console.log("found movie", movie);
            showVM.movie = movie;
            showVM.movies = Movie.all;
          }
        });
      });
      // Movie.all.forEach(function(movie){
      //   if(movie.id == $stateParams.id){
      //     console.log("found movie", movie);
      //     showVM.movie = movie;
      //     showVM.movies = Movie.all;
      //   }
      // });
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
            // mms: recommend more comprehensive log messages - What was successful?
            console.log("Successful");
          });
        }
      }
    }
  }

})();
