@onmessage = (event) ->

  # 元スレッドからURLのリストを受け取る
  urls = event.data
  count = 0

  load = (url) ->
    xhr = new XMLHttpRequest()

    xhr.onreadystatechange = ->
      try
        if xhr.readyState is 4
          count++

          if count < urls.length
            # 1つ読み込みが終わった通知
            postMessage("next")
          else
            # すべて読み込みが終わった通知
            postMessage("end")
      catch e
      return

    xhr.open("GET", url, false)
    xhr.send(null)
    return

  for val in urls then load(val)

  return