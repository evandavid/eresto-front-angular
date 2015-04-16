angular.module "client"
  .directive 'itemList', ->
    restrict: 'A'
    link: (scope, element) ->
      element.on 'click', ->
        innerHeight = $(document).innerHeight() - 110
        jQuery('.content-value').addClass 'active'
        jQuery('.content-value').css 'min-height', innerHeight+'px'
  .directive 'dropdown', ->
    restrict: 'A',
    link: (scope, element)->
      jQuery(element).dropdown({
        constrainwidth: false,
        belowOrigin: true
      })
