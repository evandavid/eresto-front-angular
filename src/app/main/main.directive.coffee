angular.module "client"
  .directive 'itemList', ->
    restrict: 'A'
    link: (scope, element) ->
      element.on 'click', ->
        innerHeight = $(document).innerHeight() - 110
        jQuery('.content-value').css 'width', '60%'
        jQuery('.content-value').css 'min-height', innerHeight+'px'
