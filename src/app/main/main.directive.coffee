angular.module "client"
  .directive 'itemList', ->
    restrict: 'A'
    link: (scope, element) ->
      element.on 'click', ->
        jQuery('.content-value').css 'width', '60%'
