class Users extends App('users')
  constructor: ->
    return ['ui.router']

class UsersCtrl extends Controller('users')
  constructor: ($scope) ->
    $scope.name = 'Irene'