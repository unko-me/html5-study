class SimpleLoad
  constructor: (args) ->



  start: ->
    console.log '[parent] start'

    worker = new Worker("../../js/pages/worker/simple_load_child.js")

    console.log '[parent] addEventListener'
    worker.addEventListener('message', (e)->
      console.log '[parent]', e.data.type

      worker.postMessage({type: 'receive'})
    )

    console.log '[parent] before postMessage("init")'
    worker.postMessage({type: 'init'})
    console.log '[parent] after postMessage("init")'



new SimpleLoad().start()