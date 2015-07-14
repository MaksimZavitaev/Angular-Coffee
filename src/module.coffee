class App extends App
  constructor: ->
    return [
      'ui.router'
      'app.users'
    ]

class BaseController extends Controller
  constructor: ($scope) ->
    $scope.name = 'This is Base Controller'
    $scope.setName = ->
      $scope.name = 'TEST Name'