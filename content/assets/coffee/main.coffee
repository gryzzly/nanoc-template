#
# @author Misha Reyzlin <hello@mishareyzlin.com>
#
# - compile with -b flag (without a wrapper function)


# slightly simplified GARBER-IRISH init
# http://www.viget.com/inspire/extending-paul-irishs-comprehensive-dom-ready-execution/
(( global, doc ) ->
  global.UTIL = 
    fire : ( func, args ) -> 
      MR[func](args) if func isnt '' and typeof MR[func] is 'function' 
    load : ->
      if $('body').data('action')
        $.each $('body').data('action').split(/\s+/), ( i, action ) ->
          UTIL.fire( action )
)( window, document )