angular.module 'client', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'restangular', 'ui.router', 'ui.bootstrap', 'xeditable']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"

    $urlRouterProvider.otherwise '/'
  .run (editableThemes) ->
    editableThemes['default'].submitTpl = '<button class="btn" type="submit"><i class="mdi-action-done"></i></button>'
    editableThemes['default'].cancelTpl = '<button class="btn red"><i class="mdi-navigation-close"></i></button>'

