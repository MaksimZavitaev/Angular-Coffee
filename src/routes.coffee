class Router extends Config('app')
  constructor: ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('/main');
    $stateProvider
    .state 'main',
      url: '/main',
      templateUrl: 'view/index.html'
      controller: 'BaseController'
    .state 'main.list',
      url: '/list',
      templateUrl: 'view/list.html'
      controller: 'UsersController'