class SimpleLoad
  constructor: (args) ->



  start: ->
    console.log '[parent] start'
    worker = new Worker("../../js/pages/worker/simple_load_child.js")
    worker.addEventListener('message', (e)->
      console.log '[parent]', e.data.type
    )
    worker.postMessage({type: 'init'})



new SimpleLoad().start()