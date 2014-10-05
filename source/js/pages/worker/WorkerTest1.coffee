class WorkerTest1
  constructor: (args) ->

  start: ->
    unless window.Worker
      alert('WebWorkerないです！')
      return

    console.log '[WorkerTest1] 読み込み開始1'
    console.time('new')
    console.time('new1')
    worker = new Worker("../../js/pages/worker/child1.js")

    #onloadイベントはないので、自力でworker
#    worker.addEventListener('load', =>
#      console.log 'onload'
#    )

    console.timeEnd('new1')
    console.log '[WorkerTest1] 読み込み開始2'
    worker.postMessage({type: 'init'})



    worker.addEventListener('message', (e)=>
      if event.data.type is 'init'
        console.timeEnd('new')
        console.log '[WorkerTest1] 呼んだ？', e

        # 遅延がどれくらいあるか
        largeData = new Uint8Array(32*1000*1000)
        @largeData = largeData
        console.log '@largeData.length', @largeData.length

        now = Date.now()
        console.log now, "#{now - e.data.time}ms"
        data = {test: 1}
        data.large = largeData
#        data.dom = document.createElement('canvas').getContext('2d').getImageData(0, 0, 100, 100)

        data.startTime = now
        console.time('データの受け渡し')

        worker.postMessage(data)  # 遅い
#        worker.postMessage(data, [largeData.buffer])  # 速い
        return
      else
        console.timeEnd('データの受け渡し')
        console.log '@largeData.length', @largeData.length
    )


new WorkerTest1().start()