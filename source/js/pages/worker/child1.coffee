console.log '[child] 1行目です。非同期になってます'

addEventListener('message', (e)->
#  data = {test: 1}
#  postMessage('result')
#  e.data.document.getElementById('childText').value = 'hoge'
  diff = Date.now() - e.data.startTime
  console.log '[child1] on message 受け取り時間', "#{diff}ms"
  postMessage({type: 'getlargedata'})

)


postMessage({type: 'init', hoge: 'fuga', time: Date.now()})
