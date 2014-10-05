class Preloader

  # Workerで実行する処理が書かれた外部ファイル
  WORKER_CORE_JS: "../../js/pages/worker/worker_loader.js"
  count: 0

  constructor: ->
    # ブラウザにWebWorkerが実装されてるかチェック
    @enableWorker = !!window.Worker
    return

  start: (urls) =>
    @urls = urls
    @total = @urls.length

    if @total isnt 0
      if @enableWorker
        # Workerが使えたらWorkerにロードの処理を投げる
        @loadWithWorker(@urls)
      else
        # Workerが使えなかったら今のスレッドでロードする
        for val in @urls then @loadWithXHR(val)
    return

  loadWithWorker: (urls) =>
    @worker = new Worker(@WORKER_CORE_JS)
    # Workerから受信する関数を設定
    @worker.onmessage = @workerHandler
    # WorkerにURLのリストを送りつつ実行
    @worker.postMessage(@urls)
    return

  # Worker内でファイルが読み込まれるごとに呼び出されるコールバック関数
  workerHandler: (e) =>
    switch e.data
      when "end"
      # Workerを停止
        @worker.terminate()
        @loadComplete()
      when "next"
        @loadComplete()
    return

  loadWithXHR: (url) =>
    @xhr = new XMLHttpRequest()
    @xhr.open("GET", url, false)
    @xhr.onreadystatechange = (data) =>
      if @xhr.readyState is 4 then @loadComplete()
    @xhr.send(null)
    return

  loadComplete: =>
    @count++
    console.log 'loadcomplete'
    if @count >= @total then console.log "全部読み込み終わった"
    return

if typeof define is "function" and define.amd
  # AMD. Register as an anonymous module.
  define ->
    Preloader
else if typeof exports is "object"
  # CommonJS
  exports.Preloader = Preloader
else
  # Browser global.
  window.Preloader = Preloader