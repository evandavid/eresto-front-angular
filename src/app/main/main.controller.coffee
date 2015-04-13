angular.module "client"
  .controller "MainCtrl", ($scope) ->
    $scope.range = (min, max, step) ->
      step = step or 1
      input = []
      i = min

      while i <= max
        input.push i
        i += step
      input
