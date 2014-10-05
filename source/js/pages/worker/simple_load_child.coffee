console.log '[child] first'
postMessage({type: 'first'})

addEventListener('message', (e)->
  data = e.data
  console.log '[child] type', data.type
)

console.log '[child] eof'
postMessage({type: 'eof'})
