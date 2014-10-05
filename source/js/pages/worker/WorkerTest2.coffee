
#= require './Preloader'

class WorkerTest2
  constructor: () ->
    console.log '[WorkerTest2]'


    @_list = for i in [0...180] then i = '../../../img/worker/dmy/' + i + '.png'




    $('.testRectangle').velocity({'rotateZ': "360deg"}, {duration: 2000, loop: true})

    $('#testButton1').click(=>
      _.each(@_list, (url)->
        xhr = new XMLHttpRequest()
        xhr.open("GET", url, false)
        xhr.onreadystatechange = (data) =>
          if xhr.readyState is 4
            console.log 'load complete'
        xhr.send(null)
      )
    )

    $('#testButton2').click(=>
      preloader = new Preloader()
      preloader.start @_list
    )



new WorkerTest2()