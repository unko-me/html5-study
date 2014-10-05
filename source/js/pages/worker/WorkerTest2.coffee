
#= require 'velocity/velocity.min.js'
#= require './Preloader'

class WorkerTest2
  constructor: (args) ->
    console.log '[WorkerTest2]'


    @_list = [
      "/img/test/car/128x60/0/0.png"
      "/img/test/car/128x60/0/1.png"
      "/img/test/car/128x60/0/2.png"
      "/img/test/car/128x60/0/3.png"
      "/img/test/car/128x60/0/4.png"
      "/img/test/car/128x60/0/5.png"
      "/img/test/car/128x60/0/6.png"
      "/img/test/car/128x60/0/7.png"
      "/img/test/car/128x60/1/0.png"
      "/img/test/car/128x60/1/1.png"
      "/img/test/car/128x60/1/10.png"
      "/img/test/car/128x60/1/11.png"
      "/img/test/car/128x60/1/2.png"
      "/img/test/car/128x60/1/3.png"
      "/img/test/car/128x60/1/4.png"
      "/img/test/car/128x60/1/5.png"
      "/img/test/car/128x60/1/6.png"
      "/img/test/car/128x60/1/7.png"
      "/img/test/car/128x60/1/8.png"
      "/img/test/car/128x60/1/9.png"
      "/img/test/car/128x60/2/0.png"
      "/img/test/car/128x60/2/1.png"
      "/img/test/car/128x60/2/2.png"
      "/img/test/car/128x60/2/3.png"
      "/img/test/car/128x60/2/4.png"
      "/img/test/car/128x60/2/5.png"
      "/img/test/car/128x60/2/6.png"
      "/img/test/car/128x60/2/7.png"
      "/img/test/car/128x60/3/0.png"
      "/img/test/car/128x60/3/1.png"
      "/img/test/car/128x60/3/2.png"
      "/img/test/car/128x60/3/3.png"
      "/img/test/car/128x60/3/4.png"
      "/img/test/car/128x60/3/5.png"
      "/img/test/car/128x60/3/6.png"
      "/img/test/car/128x60/3/7.png"
      "/img/test/car/128x60/3/8.png"
      "/img/test/car/128x60/4/0.png"
      "/img/test/car/128x60/4/1.png"
      "/img/test/car/128x60/4/10.png"
      "/img/test/car/128x60/4/11.png"
      "/img/test/car/128x60/4/12.png"
      "/img/test/car/128x60/4/13.png"
      "/img/test/car/128x60/4/14.png"
      "/img/test/car/128x60/4/2.png"
      "/img/test/car/128x60/4/3.png"
      "/img/test/car/128x60/4/4.png"
      "/img/test/car/128x60/4/5.png"
      "/img/test/car/128x60/4/6.png"
      "/img/test/car/128x60/4/7.png"
      "/img/test/car/128x60/4/8.png"
      "/img/test/car/128x60/4/9.png"
      "/img/test/car/128x60/5/0.png"
      "/img/test/car/128x60/5/1.png"
      "/img/test/car/128x60/5/2.png"
      "/img/test/car/128x60/5/3.png"
      "/img/test/car/128x60/5/4.png"
      "/img/test/car/128x60/5/5.png"
      "/img/test/car/128x60/5/6.png"
      "/img/test/car/220x96/0/0.png"
      "/img/test/car/220x96/0/1.png"
      "/img/test/car/220x96/0/2.png"
      "/img/test/car/220x96/0/3.png"
      "/img/test/car/220x96/0/4.png"
      "/img/test/car/220x96/0/5.png"
      "/img/test/car/220x96/0/6.png"
      "/img/test/car/220x96/0/7.png"
      "/img/test/car/220x96/1/0.png"
      "/img/test/car/220x96/1/1.png"
      "/img/test/car/220x96/1/10.png"
      "/img/test/car/220x96/1/11.png"
      "/img/test/car/220x96/1/2.png"
      "/img/test/car/220x96/1/3.png"
      "/img/test/car/220x96/1/4.png"
      "/img/test/car/220x96/1/5.png"
      "/img/test/car/220x96/1/6.png"
      "/img/test/car/220x96/1/7.png"
      "/img/test/car/220x96/1/8.png"
      "/img/test/car/220x96/1/9.png"
      "/img/test/car/220x96/2/0.png"
      "/img/test/car/220x96/2/1.png"
      "/img/test/car/220x96/2/2.png"
      "/img/test/car/220x96/2/3.png"
      "/img/test/car/220x96/2/4.png"
      "/img/test/car/220x96/2/5.png"
      "/img/test/car/220x96/2/6.png"
      "/img/test/car/220x96/2/7.png"
      "/img/test/car/220x96/3/0.png"
      "/img/test/car/220x96/3/1.png"
      "/img/test/car/220x96/3/2.png"
      "/img/test/car/220x96/3/3.png"
      "/img/test/car/220x96/3/4.png"
      "/img/test/car/220x96/3/5.png"
      "/img/test/car/220x96/3/6.png"
      "/img/test/car/220x96/3/7.png"
      "/img/test/car/220x96/3/8.png"
      "/img/test/car/220x96/4/0.png"
      "/img/test/car/220x96/4/1.png"
      "/img/test/car/220x96/4/10.png"
      "/img/test/car/220x96/4/11.png"
      "/img/test/car/220x96/4/12.png"
      "/img/test/car/220x96/4/13.png"
      "/img/test/car/220x96/4/14.png"
      "/img/test/car/220x96/4/2.png"
      "/img/test/car/220x96/4/3.png"
      "/img/test/car/220x96/4/4.png"
      "/img/test/car/220x96/4/5.png"
      "/img/test/car/220x96/4/6.png"
      "/img/test/car/220x96/4/7.png"
      "/img/test/car/220x96/4/8.png"
      "/img/test/car/220x96/4/9.png"
      "/img/test/car/220x96/5/0.png"
      "/img/test/car/220x96/5/1.png"
      "/img/test/car/220x96/5/2.png"
      "/img/test/car/220x96/5/3.png"
      "/img/test/car/220x96/5/4.png"
      "/img/test/car/220x96/5/5.png"
      "/img/test/car/220x96/5/6.png"
      "/img/test/car/294x180/0/0.png"
      "/img/test/car/294x180/0/1.png"
      "/img/test/car/294x180/0/2.png"
      "/img/test/car/294x180/0/3.png"
      "/img/test/car/294x180/0/4.png"
      "/img/test/car/294x180/0/5.png"
      "/img/test/car/294x180/0/6.png"
      "/img/test/car/294x180/0/7.png"
      "/img/test/car/294x180/1/0.png"
      "/img/test/car/294x180/1/1.png"
      "/img/test/car/294x180/1/10.png"
      "/img/test/car/294x180/1/11.png"
      "/img/test/car/294x180/1/2.png"
      "/img/test/car/294x180/1/3.png"
      "/img/test/car/294x180/1/4.png"
      "/img/test/car/294x180/1/5.png"
      "/img/test/car/294x180/1/6.png"
      "/img/test/car/294x180/1/7.png"
      "/img/test/car/294x180/1/8.png"
      "/img/test/car/294x180/1/9.png"
      "/img/test/car/294x180/2/0.png"
      "/img/test/car/294x180/2/1.png"
      "/img/test/car/294x180/2/2.png"
      "/img/test/car/294x180/2/3.png"
      "/img/test/car/294x180/2/4.png"
      "/img/test/car/294x180/2/5.png"
      "/img/test/car/294x180/2/6.png"
      "/img/test/car/294x180/2/7.png"
      "/img/test/car/294x180/3/0.png"
      "/img/test/car/294x180/3/1.png"
      "/img/test/car/294x180/3/2.png"
      "/img/test/car/294x180/3/3.png"
      "/img/test/car/294x180/3/4.png"
      "/img/test/car/294x180/3/5.png"
      "/img/test/car/294x180/3/6.png"
      "/img/test/car/294x180/3/7.png"
      "/img/test/car/294x180/3/8.png"
      "/img/test/car/294x180/4/0.png"
      "/img/test/car/294x180/4/1.png"
      "/img/test/car/294x180/4/10.png"
      "/img/test/car/294x180/4/11.png"
      "/img/test/car/294x180/4/12.png"
      "/img/test/car/294x180/4/13.png"
      "/img/test/car/294x180/4/14.png"
      "/img/test/car/294x180/4/2.png"
      "/img/test/car/294x180/4/3.png"
      "/img/test/car/294x180/4/4.png"
      "/img/test/car/294x180/4/5.png"
      "/img/test/car/294x180/4/6.png"
      "/img/test/car/294x180/4/7.png"
      "/img/test/car/294x180/4/8.png"
      "/img/test/car/294x180/4/9.png"
      "/img/test/car/294x180/5/0.png"
      "/img/test/car/294x180/5/1.png"
      "/img/test/car/294x180/5/2.png"
      "/img/test/car/294x180/5/3.png"
      "/img/test/car/294x180/5/4.png"
      "/img/test/car/294x180/5/5.png"
      "/img/test/car/294x180/5/6.png"
      "/img/test/icon/180px/0.jpg"
      "/img/test/icon/180px/1.jpg"
      "/img/test/icon/180px/10.jpg"
      "/img/test/icon/180px/100.jpg"
      "/img/test/icon/180px/10001.jpg"
      "/img/test/icon/180px/10002.jpg"
      "/img/test/icon/180px/10003.jpg"
      "/img/test/icon/180px/10004.jpg"
      "/img/test/icon/180px/10005.jpg"
      "/img/test/icon/180px/10006.jpg"
      "/img/test/icon/180px/10007.jpg"
      "/img/test/icon/180px/10008.jpg"
      "/img/test/icon/180px/10009.jpg"
      "/img/test/icon/180px/10010.jpg"
      "/img/test/icon/180px/10011.jpg"
      "/img/test/icon/180px/10012.jpg"
      "/img/test/icon/180px/10013.jpg"
      "/img/test/icon/180px/10014.jpg"
      "/img/test/icon/180px/10015.jpg"
      "/img/test/icon/180px/10016.jpg"
      "/img/test/icon/180px/101.jpg"
      "/img/test/icon/180px/102.jpg"
      "/img/test/icon/180px/103.jpg"
      "/img/test/icon/180px/104.jpg"
      "/img/test/icon/180px/105.jpg"
      "/img/test/icon/180px/106.jpg"
      "/img/test/icon/180px/107.jpg"
      "/img/test/icon/180px/108.jpg"
      "/img/test/icon/180px/109.jpg"
      "/img/test/icon/180px/11.jpg"
      "/img/test/icon/180px/110.jpg"
      "/img/test/icon/180px/111.jpg"
      "/img/test/icon/180px/112.jpg"
      "/img/test/icon/180px/113.jpg"
      "/img/test/icon/180px/114.jpg"
      "/img/test/icon/180px/115.jpg"
      "/img/test/icon/180px/116.jpg"
      "/img/test/icon/180px/117.jpg"
      "/img/test/icon/180px/118.jpg"
      "/img/test/icon/180px/119.jpg"
      "/img/test/icon/180px/12.jpg"
      "/img/test/icon/180px/120.jpg"
      "/img/test/icon/180px/121.jpg"
      "/img/test/icon/180px/122.jpg"
      "/img/test/icon/180px/123.jpg"
      "/img/test/icon/180px/124.jpg"
      "/img/test/icon/180px/125.jpg"
      "/img/test/icon/180px/126.jpg"
      "/img/test/icon/180px/127.jpg"
      "/img/test/icon/180px/128.jpg"
      "/img/test/icon/180px/129.jpg"
      "/img/test/icon/180px/13.jpg"
      "/img/test/icon/180px/130.jpg"
      "/img/test/icon/180px/131.jpg"
      "/img/test/icon/180px/132.jpg"
      "/img/test/icon/180px/133.jpg"
      "/img/test/icon/180px/134.jpg"
      "/img/test/icon/180px/135.jpg"
      "/img/test/icon/180px/136.jpg"
      "/img/test/icon/180px/137.jpg"
      "/img/test/icon/180px/138.jpg"
      "/img/test/icon/180px/139.jpg"
      "/img/test/icon/180px/14.jpg"
      "/img/test/icon/180px/140.jpg"
      "/img/test/icon/180px/141.jpg"
      "/img/test/icon/180px/142.jpg"
      "/img/test/icon/180px/143.jpg"
      "/img/test/icon/180px/144.jpg"
      "/img/test/icon/180px/145.jpg"
      "/img/test/icon/180px/146.jpg"
      "/img/test/icon/180px/147.jpg"
      "/img/test/icon/180px/148.jpg"
      "/img/test/icon/180px/149.jpg"
      "/img/test/icon/180px/15.jpg"
      "/img/test/icon/180px/16.jpg"
      "/img/test/icon/180px/17.jpg"
      "/img/test/icon/180px/18.jpg"
      "/img/test/icon/180px/19.jpg"
      "/img/test/icon/180px/2.jpg"
      "/img/test/icon/180px/20.jpg"
      "/img/test/icon/180px/21.jpg"
      "/img/test/icon/180px/22.jpg"
      "/img/test/icon/180px/23.jpg"
      "/img/test/icon/180px/24.jpg"
      "/img/test/icon/180px/25.jpg"
      "/img/test/icon/180px/26.jpg"
      "/img/test/icon/180px/27.jpg"
      "/img/test/icon/180px/28.jpg"
      "/img/test/icon/180px/29.jpg"
      "/img/test/icon/180px/3.jpg"
      "/img/test/icon/180px/30.jpg"
      "/img/test/icon/180px/31.jpg"
      "/img/test/icon/180px/32.jpg"
      "/img/test/icon/180px/33.jpg"
      "/img/test/icon/180px/34.jpg"
      "/img/test/icon/180px/35.jpg"
      "/img/test/icon/180px/36.jpg"
      "/img/test/icon/180px/37.jpg"
      "/img/test/icon/180px/38.jpg"
      "/img/test/icon/180px/39.jpg"
      "/img/test/icon/180px/4.jpg"
      "/img/test/icon/180px/40.jpg"
      "/img/test/icon/180px/41.jpg"
      "/img/test/icon/180px/42.jpg"
      "/img/test/icon/180px/43.jpg"
      "/img/test/icon/180px/44.jpg"
      "/img/test/icon/180px/45.jpg"
      "/img/test/icon/180px/46.jpg"
      "/img/test/icon/180px/47.jpg"
      "/img/test/icon/180px/48.jpg"
      "/img/test/icon/180px/49.jpg"
      "/img/test/icon/180px/5.jpg"
      "/img/test/icon/180px/50.jpg"
      "/img/test/icon/180px/51.jpg"
      "/img/test/icon/180px/52.jpg"
      "/img/test/icon/180px/53.jpg"
      "/img/test/icon/180px/54.jpg"
      "/img/test/icon/180px/55.jpg"
      "/img/test/icon/180px/56.jpg"
      "/img/test/icon/180px/57.jpg"
      "/img/test/icon/180px/58.jpg"
      "/img/test/icon/180px/59.jpg"
      "/img/test/icon/180px/6.jpg"
      "/img/test/icon/180px/60.jpg"
      "/img/test/icon/180px/61.jpg"
      "/img/test/icon/180px/62.jpg"
      "/img/test/icon/180px/63.jpg"
      "/img/test/icon/180px/64.jpg"
      "/img/test/icon/180px/65.jpg"
      "/img/test/icon/180px/66.jpg"
      "/img/test/icon/180px/67.jpg"
      "/img/test/icon/180px/68.jpg"
      "/img/test/icon/180px/69.jpg"
      "/img/test/icon/180px/7.jpg"
      "/img/test/icon/180px/70.jpg"
      "/img/test/icon/180px/71.jpg"
      "/img/test/icon/180px/72.jpg"
      "/img/test/icon/180px/73.jpg"
      "/img/test/icon/180px/74.jpg"
      "/img/test/icon/180px/75.jpg"
      "/img/test/icon/180px/76.jpg"
      "/img/test/icon/180px/77.jpg"
      "/img/test/icon/180px/78.jpg"
      "/img/test/icon/180px/79.jpg"
      "/img/test/icon/180px/8.jpg"
      "/img/test/icon/180px/80.jpg"
      "/img/test/icon/180px/81.jpg"
      "/img/test/icon/180px/82.jpg"
      "/img/test/icon/180px/83.jpg"
      "/img/test/icon/180px/84.jpg"
      "/img/test/icon/180px/85.jpg"
      "/img/test/icon/180px/86.jpg"
      "/img/test/icon/180px/87.jpg"
      "/img/test/icon/180px/88.jpg"
      "/img/test/icon/180px/89.jpg"
      "/img/test/icon/180px/9.jpg"
      "/img/test/icon/180px/90.jpg"
      "/img/test/icon/180px/91.jpg"
      "/img/test/icon/180px/92.jpg"
      "/img/test/icon/180px/93.jpg"
      "/img/test/icon/180px/94.jpg"
      "/img/test/icon/180px/95.jpg"
      "/img/test/icon/180px/96.jpg"
      "/img/test/icon/180px/97.jpg"
      "/img/test/icon/180px/98.jpg"
      "/img/test/icon/180px/99.jpg"
      "/img/test/icon/270px/0.jpg"
      "/img/test/icon/270px/1.jpg"
      "/img/test/icon/270px/10.jpg"
      "/img/test/icon/270px/100.jpg"
      "/img/test/icon/270px/10001.jpg"
      "/img/test/icon/270px/10002.jpg"
      "/img/test/icon/270px/10003.jpg"
      "/img/test/icon/270px/10004.jpg"
      "/img/test/icon/270px/10005.jpg"
      "/img/test/icon/270px/10006.jpg"
      "/img/test/icon/270px/10007.jpg"
      "/img/test/icon/270px/10008.jpg"
      "/img/test/icon/270px/10009.jpg"
      "/img/test/icon/270px/10010.jpg"
      "/img/test/icon/270px/10011.jpg"
      "/img/test/icon/270px/10012.jpg"
      "/img/test/icon/270px/10013.jpg"
      "/img/test/icon/270px/10014.jpg"
      "/img/test/icon/270px/10015.jpg"
      "/img/test/icon/270px/10016.jpg"
      "/img/test/icon/270px/101.jpg"
      "/img/test/icon/270px/102.jpg"
      "/img/test/icon/270px/103.jpg"
      "/img/test/icon/270px/104.jpg"
      "/img/test/icon/270px/105.jpg"
      "/img/test/icon/270px/106.jpg"
      "/img/test/icon/270px/107.jpg"
      "/img/test/icon/270px/108.jpg"
      "/img/test/icon/270px/109.jpg"
      "/img/test/icon/270px/11.jpg"
      "/img/test/icon/270px/110.jpg"
      "/img/test/icon/270px/111.jpg"
      "/img/test/icon/270px/112.jpg"
      "/img/test/icon/270px/113.jpg"
      "/img/test/icon/270px/114.jpg"
      "/img/test/icon/270px/115.jpg"
      "/img/test/icon/270px/116.jpg"
      "/img/test/icon/270px/117.jpg"
      "/img/test/icon/270px/118.jpg"
      "/img/test/icon/270px/119.jpg"
      "/img/test/icon/270px/12.jpg"
      "/img/test/icon/270px/120.jpg"
      "/img/test/icon/270px/121.jpg"
      "/img/test/icon/270px/122.jpg"
      "/img/test/icon/270px/123.jpg"
      "/img/test/icon/270px/124.jpg"
      "/img/test/icon/270px/125.jpg"
      "/img/test/icon/270px/126.jpg"
      "/img/test/icon/270px/127.jpg"
      "/img/test/icon/270px/128.jpg"
      "/img/test/icon/270px/129.jpg"
      "/img/test/icon/270px/13.jpg"
      "/img/test/icon/270px/130.jpg"
      "/img/test/icon/270px/131.jpg"
      "/img/test/icon/270px/132.jpg"
      "/img/test/icon/270px/133.jpg"
      "/img/test/icon/270px/134.jpg"
      "/img/test/icon/270px/135.jpg"
      "/img/test/icon/270px/136.jpg"
      "/img/test/icon/270px/137.jpg"
      "/img/test/icon/270px/138.jpg"
      "/img/test/icon/270px/139.jpg"
      "/img/test/icon/270px/14.jpg"
      "/img/test/icon/270px/140.jpg"
      "/img/test/icon/270px/141.jpg"
      "/img/test/icon/270px/142.jpg"
      "/img/test/icon/270px/143.jpg"
      "/img/test/icon/270px/144.jpg"
      "/img/test/icon/270px/145.jpg"
      "/img/test/icon/270px/146.jpg"
      "/img/test/icon/270px/147.jpg"
      "/img/test/icon/270px/148.jpg"
      "/img/test/icon/270px/149.jpg"
      "/img/test/icon/270px/15.jpg"
      "/img/test/icon/270px/16.jpg"
      "/img/test/icon/270px/17.jpg"
      "/img/test/icon/270px/18.jpg"
      "/img/test/icon/270px/19.jpg"
      "/img/test/icon/270px/2.jpg"
      "/img/test/icon/270px/20.jpg"
      "/img/test/icon/270px/21.jpg"
      "/img/test/icon/270px/22.jpg"
      "/img/test/icon/270px/23.jpg"
      "/img/test/icon/270px/24.jpg"
      "/img/test/icon/270px/25.jpg"
      "/img/test/icon/270px/26.jpg"
      "/img/test/icon/270px/27.jpg"
      "/img/test/icon/270px/28.jpg"
      "/img/test/icon/270px/29.jpg"
      "/img/test/icon/270px/3.jpg"
      "/img/test/icon/270px/30.jpg"
      "/img/test/icon/270px/31.jpg"
      "/img/test/icon/270px/32.jpg"
      "/img/test/icon/270px/33.jpg"
      "/img/test/icon/270px/34.jpg"
      "/img/test/icon/270px/35.jpg"
      "/img/test/icon/270px/36.jpg"
      "/img/test/icon/270px/37.jpg"
      "/img/test/icon/270px/38.jpg"
      "/img/test/icon/270px/39.jpg"
      "/img/test/icon/270px/4.jpg"
      "/img/test/icon/270px/40.jpg"
      "/img/test/icon/270px/41.jpg"
      "/img/test/icon/270px/42.jpg"
      "/img/test/icon/270px/43.jpg"
      "/img/test/icon/270px/44.jpg"
      "/img/test/icon/270px/45.jpg"
      "/img/test/icon/270px/46.jpg"
      "/img/test/icon/270px/47.jpg"
      "/img/test/icon/270px/48.jpg"
      "/img/test/icon/270px/49.jpg"
      "/img/test/icon/270px/5.jpg"
      "/img/test/icon/270px/50.jpg"
      "/img/test/icon/270px/51.jpg"
      "/img/test/icon/270px/52.jpg"
      "/img/test/icon/270px/53.jpg"
      "/img/test/icon/270px/54.jpg"
      "/img/test/icon/270px/55.jpg"
      "/img/test/icon/270px/56.jpg"
      "/img/test/icon/270px/57.jpg"
      "/img/test/icon/270px/58.jpg"
      "/img/test/icon/270px/59.jpg"
      "/img/test/icon/270px/6.jpg"
      "/img/test/icon/270px/60.jpg"
      "/img/test/icon/270px/61.jpg"
      "/img/test/icon/270px/62.jpg"
      "/img/test/icon/270px/63.jpg"
      "/img/test/icon/270px/64.jpg"
      "/img/test/icon/270px/65.jpg"
      "/img/test/icon/270px/66.jpg"
      "/img/test/icon/270px/67.jpg"
      "/img/test/icon/270px/68.jpg"
      "/img/test/icon/270px/69.jpg"
      "/img/test/icon/270px/7.jpg"
      "/img/test/icon/270px/70.jpg"
      "/img/test/icon/270px/71.jpg"
      "/img/test/icon/270px/72.jpg"
      "/img/test/icon/270px/73.jpg"
      "/img/test/icon/270px/74.jpg"
      "/img/test/icon/270px/75.jpg"
      "/img/test/icon/270px/76.jpg"
      "/img/test/icon/270px/77.jpg"
      "/img/test/icon/270px/78.jpg"
      "/img/test/icon/270px/79.jpg"
      "/img/test/icon/270px/8.jpg"
      "/img/test/icon/270px/80.jpg"
      "/img/test/icon/270px/81.jpg"
      "/img/test/icon/270px/82.jpg"
      "/img/test/icon/270px/83.jpg"
      "/img/test/icon/270px/84.jpg"
      "/img/test/icon/270px/85.jpg"
      "/img/test/icon/270px/86.jpg"
      "/img/test/icon/270px/87.jpg"
      "/img/test/icon/270px/88.jpg"
      "/img/test/icon/270px/89.jpg"
      "/img/test/icon/270px/9.jpg"
      "/img/test/icon/270px/90.jpg"
      "/img/test/icon/270px/91.jpg"
      "/img/test/icon/270px/92.jpg"
      "/img/test/icon/270px/93.jpg"
      "/img/test/icon/270px/94.jpg"
      "/img/test/icon/270px/95.jpg"
      "/img/test/icon/270px/96.jpg"
      "/img/test/icon/270px/97.jpg"
      "/img/test/icon/270px/98.jpg"
      "/img/test/icon/270px/99.jpg"
      "/img/test/icon/52px/0.jpg"
      "/img/test/icon/52px/1.jpg"
      "/img/test/icon/52px/10.jpg"
      "/img/test/icon/52px/100.jpg"
      "/img/test/icon/52px/10001.jpg"
      "/img/test/icon/52px/10002.jpg"
      "/img/test/icon/52px/10003.jpg"
      "/img/test/icon/52px/10004.jpg"
      "/img/test/icon/52px/10005.jpg"
      "/img/test/icon/52px/10006.jpg"
      "/img/test/icon/52px/10007.jpg"
      "/img/test/icon/52px/10008.jpg"
      "/img/test/icon/52px/10009.jpg"
      "/img/test/icon/52px/10010.jpg"
      "/img/test/icon/52px/10011.jpg"
      "/img/test/icon/52px/10012.jpg"
      "/img/test/icon/52px/10013.jpg"
      "/img/test/icon/52px/10014.jpg"
      "/img/test/icon/52px/10015.jpg"
      "/img/test/icon/52px/10016.jpg"
      "/img/test/icon/52px/101.jpg"
      "/img/test/icon/52px/102.jpg"
      "/img/test/icon/52px/103.jpg"
      "/img/test/icon/52px/104.jpg"
      "/img/test/icon/52px/105.jpg"
      "/img/test/icon/52px/106.jpg"
      "/img/test/icon/52px/107.jpg"
      "/img/test/icon/52px/108.jpg"
      "/img/test/icon/52px/109.jpg"
      "/img/test/icon/52px/11.jpg"
      "/img/test/icon/52px/110.jpg"
      "/img/test/icon/52px/111.jpg"
      "/img/test/icon/52px/112.jpg"
      "/img/test/icon/52px/113.jpg"
      "/img/test/icon/52px/114.jpg"
      "/img/test/icon/52px/115.jpg"
      "/img/test/icon/52px/116.jpg"
      "/img/test/icon/52px/117.jpg"
      "/img/test/icon/52px/118.jpg"
      "/img/test/icon/52px/119.jpg"
      "/img/test/icon/52px/12.jpg"
      "/img/test/icon/52px/120.jpg"
      "/img/test/icon/52px/121.jpg"
      "/img/test/icon/52px/122.jpg"
      "/img/test/icon/52px/123.jpg"
      "/img/test/icon/52px/124.jpg"
      "/img/test/icon/52px/125.jpg"
      "/img/test/icon/52px/126.jpg"
      "/img/test/icon/52px/127.jpg"
      "/img/test/icon/52px/128.jpg"
      "/img/test/icon/52px/129.jpg"
      "/img/test/icon/52px/13.jpg"
      "/img/test/icon/52px/130.jpg"
      "/img/test/icon/52px/131.jpg"
      "/img/test/icon/52px/132.jpg"
      "/img/test/icon/52px/133.jpg"
      "/img/test/icon/52px/134.jpg"
      "/img/test/icon/52px/135.jpg"
      "/img/test/icon/52px/136.jpg"
      "/img/test/icon/52px/137.jpg"
      "/img/test/icon/52px/138.jpg"
      "/img/test/icon/52px/139.jpg"
      "/img/test/icon/52px/14.jpg"
      "/img/test/icon/52px/140.jpg"
      "/img/test/icon/52px/141.jpg"
      "/img/test/icon/52px/142.jpg"
      "/img/test/icon/52px/143.jpg"
      "/img/test/icon/52px/144.jpg"
      "/img/test/icon/52px/145.jpg"
      "/img/test/icon/52px/146.jpg"
      "/img/test/icon/52px/147.jpg"
      "/img/test/icon/52px/148.jpg"
      "/img/test/icon/52px/149.jpg"
      "/img/test/icon/52px/15.jpg"
      "/img/test/icon/52px/16.jpg"
      "/img/test/icon/52px/17.jpg"
      "/img/test/icon/52px/18.jpg"
      "/img/test/icon/52px/19.jpg"
      "/img/test/icon/52px/2.jpg"
      "/img/test/icon/52px/20.jpg"
      "/img/test/icon/52px/21.jpg"
      "/img/test/icon/52px/22.jpg"
      "/img/test/icon/52px/23.jpg"
      "/img/test/icon/52px/24.jpg"
      "/img/test/icon/52px/25.jpg"
      "/img/test/icon/52px/26.jpg"
      "/img/test/icon/52px/27.jpg"
      "/img/test/icon/52px/28.jpg"
      "/img/test/icon/52px/29.jpg"
      "/img/test/icon/52px/3.jpg"
      "/img/test/icon/52px/30.jpg"
      "/img/test/icon/52px/31.jpg"
      "/img/test/icon/52px/32.jpg"
      "/img/test/icon/52px/33.jpg"
      "/img/test/icon/52px/34.jpg"
      "/img/test/icon/52px/35.jpg"
      "/img/test/icon/52px/36.jpg"
      "/img/test/icon/52px/37.jpg"
      "/img/test/icon/52px/38.jpg"
      "/img/test/icon/52px/39.jpg"
      "/img/test/icon/52px/4.jpg"
      "/img/test/icon/52px/40.jpg"
      "/img/test/icon/52px/41.jpg"
      "/img/test/icon/52px/42.jpg"
      "/img/test/icon/52px/43.jpg"
      "/img/test/icon/52px/44.jpg"
      "/img/test/icon/52px/45.jpg"
      "/img/test/icon/52px/46.jpg"
      "/img/test/icon/52px/47.jpg"
      "/img/test/icon/52px/48.jpg"
      "/img/test/icon/52px/49.jpg"
      "/img/test/icon/52px/5.jpg"
      "/img/test/icon/52px/50.jpg"
      "/img/test/icon/52px/51.jpg"
      "/img/test/icon/52px/52.jpg"
      "/img/test/icon/52px/53.jpg"
      "/img/test/icon/52px/54.jpg"
      "/img/test/icon/52px/55.jpg"
      "/img/test/icon/52px/56.jpg"
      "/img/test/icon/52px/57.jpg"
      "/img/test/icon/52px/58.jpg"
      "/img/test/icon/52px/59.jpg"
      "/img/test/icon/52px/6.jpg"
      "/img/test/icon/52px/60.jpg"
      "/img/test/icon/52px/61.jpg"
      "/img/test/icon/52px/62.jpg"
      "/img/test/icon/52px/63.jpg"
      "/img/test/icon/52px/64.jpg"
      "/img/test/icon/52px/65.jpg"
      "/img/test/icon/52px/66.jpg"
      "/img/test/icon/52px/67.jpg"
      "/img/test/icon/52px/68.jpg"
      "/img/test/icon/52px/69.jpg"
      "/img/test/icon/52px/7.jpg"
      "/img/test/icon/52px/70.jpg"
      "/img/test/icon/52px/71.jpg"
      "/img/test/icon/52px/72.jpg"
      "/img/test/icon/52px/73.jpg"
      "/img/test/icon/52px/74.jpg"
      "/img/test/icon/52px/75.jpg"
      "/img/test/icon/52px/76.jpg"
      "/img/test/icon/52px/77.jpg"
      "/img/test/icon/52px/78.jpg"
      "/img/test/icon/52px/79.jpg"
      "/img/test/icon/52px/8.jpg"
      "/img/test/icon/52px/80.jpg"
      "/img/test/icon/52px/81.jpg"
      "/img/test/icon/52px/82.jpg"
      "/img/test/icon/52px/83.jpg"
      "/img/test/icon/52px/84.jpg"
      "/img/test/icon/52px/85.jpg"
      "/img/test/icon/52px/86.jpg"
      "/img/test/icon/52px/87.jpg"
      "/img/test/icon/52px/88.jpg"
      "/img/test/icon/52px/89.jpg"
      "/img/test/icon/52px/9.jpg"
      "/img/test/icon/52px/90.jpg"
      "/img/test/icon/52px/91.jpg"
      "/img/test/icon/52px/92.jpg"
      "/img/test/icon/52px/93.jpg"
      "/img/test/icon/52px/94.jpg"
      "/img/test/icon/52px/95.jpg"
      "/img/test/icon/52px/96.jpg"
      "/img/test/icon/52px/97.jpg"
      "/img/test/icon/52px/98.jpg"
      "/img/test/icon/52px/99.jpg"
      "/img/test/icon/80px/0.jpg"
      "/img/test/icon/80px/1.jpg"
      "/img/test/icon/80px/10.jpg"
      "/img/test/icon/80px/100.jpg"
      "/img/test/icon/80px/10001.jpg"
      "/img/test/icon/80px/10002.jpg"
      "/img/test/icon/80px/10003.jpg"
      "/img/test/icon/80px/10004.jpg"
      "/img/test/icon/80px/10005.jpg"
      "/img/test/icon/80px/10006.jpg"
      "/img/test/icon/80px/10007.jpg"
      "/img/test/icon/80px/10008.jpg"
      "/img/test/icon/80px/10009.jpg"
      "/img/test/icon/80px/10010.jpg"
      "/img/test/icon/80px/10011.jpg"
      "/img/test/icon/80px/10012.jpg"
      "/img/test/icon/80px/10013.jpg"
      "/img/test/icon/80px/10014.jpg"
      "/img/test/icon/80px/10015.jpg"
      "/img/test/icon/80px/10016.jpg"
      "/img/test/icon/80px/101.jpg"
      "/img/test/icon/80px/102.jpg"
      "/img/test/icon/80px/103.jpg"
      "/img/test/icon/80px/104.jpg"
      "/img/test/icon/80px/105.jpg"
      "/img/test/icon/80px/106.jpg"
      "/img/test/icon/80px/107.jpg"
      "/img/test/icon/80px/108.jpg"
      "/img/test/icon/80px/109.jpg"
      "/img/test/icon/80px/11.jpg"
      "/img/test/icon/80px/110.jpg"
      "/img/test/icon/80px/111.jpg"
      "/img/test/icon/80px/112.jpg"
      "/img/test/icon/80px/113.jpg"
      "/img/test/icon/80px/114.jpg"
      "/img/test/icon/80px/115.jpg"
      "/img/test/icon/80px/116.jpg"
      "/img/test/icon/80px/117.jpg"
      "/img/test/icon/80px/118.jpg"
      "/img/test/icon/80px/119.jpg"
      "/img/test/icon/80px/12.jpg"
      "/img/test/icon/80px/120.jpg"
      "/img/test/icon/80px/121.jpg"
      "/img/test/icon/80px/122.jpg"
      "/img/test/icon/80px/123.jpg"
      "/img/test/icon/80px/124.jpg"
      "/img/test/icon/80px/125.jpg"
      "/img/test/icon/80px/126.jpg"
      "/img/test/icon/80px/127.jpg"
      "/img/test/icon/80px/128.jpg"
      "/img/test/icon/80px/129.jpg"
      "/img/test/icon/80px/13.jpg"
      "/img/test/icon/80px/130.jpg"
      "/img/test/icon/80px/131.jpg"
      "/img/test/icon/80px/132.jpg"
      "/img/test/icon/80px/133.jpg"
      "/img/test/icon/80px/134.jpg"
      "/img/test/icon/80px/135.jpg"
      "/img/test/icon/80px/136.jpg"
      "/img/test/icon/80px/137.jpg"
      "/img/test/icon/80px/138.jpg"
      "/img/test/icon/80px/139.jpg"
      "/img/test/icon/80px/14.jpg"
      "/img/test/icon/80px/140.jpg"
      "/img/test/icon/80px/141.jpg"
      "/img/test/icon/80px/142.jpg"
      "/img/test/icon/80px/143.jpg"
      "/img/test/icon/80px/144.jpg"
      "/img/test/icon/80px/145.jpg"
      "/img/test/icon/80px/146.jpg"
      "/img/test/icon/80px/147.jpg"
      "/img/test/icon/80px/148.jpg"
      "/img/test/icon/80px/149.jpg"
      "/img/test/icon/80px/15.jpg"
      "/img/test/icon/80px/16.jpg"
      "/img/test/icon/80px/17.jpg"
      "/img/test/icon/80px/18.jpg"
      "/img/test/icon/80px/19.jpg"
      "/img/test/icon/80px/2.jpg"
      "/img/test/icon/80px/20.jpg"
      "/img/test/icon/80px/21.jpg"
      "/img/test/icon/80px/22.jpg"
      "/img/test/icon/80px/23.jpg"
      "/img/test/icon/80px/24.jpg"
      "/img/test/icon/80px/25.jpg"
      "/img/test/icon/80px/26.jpg"
      "/img/test/icon/80px/27.jpg"
      "/img/test/icon/80px/28.jpg"
      "/img/test/icon/80px/29.jpg"
      "/img/test/icon/80px/3.jpg"
      "/img/test/icon/80px/30.jpg"
      "/img/test/icon/80px/31.jpg"
      "/img/test/icon/80px/32.jpg"
      "/img/test/icon/80px/33.jpg"
      "/img/test/icon/80px/34.jpg"
      "/img/test/icon/80px/35.jpg"
      "/img/test/icon/80px/36.jpg"
      "/img/test/icon/80px/37.jpg"
      "/img/test/icon/80px/38.jpg"
      "/img/test/icon/80px/39.jpg"
      "/img/test/icon/80px/4.jpg"
      "/img/test/icon/80px/40.jpg"
      "/img/test/icon/80px/41.jpg"
      "/img/test/icon/80px/42.jpg"
      "/img/test/icon/80px/43.jpg"
      "/img/test/icon/80px/44.jpg"
      "/img/test/icon/80px/45.jpg"
      "/img/test/icon/80px/46.jpg"
      "/img/test/icon/80px/47.jpg"
      "/img/test/icon/80px/48.jpg"
      "/img/test/icon/80px/49.jpg"
      "/img/test/icon/80px/5.jpg"
      "/img/test/icon/80px/50.jpg"
      "/img/test/icon/80px/51.jpg"
      "/img/test/icon/80px/52.jpg"
      "/img/test/icon/80px/53.jpg"
      "/img/test/icon/80px/54.jpg"
      "/img/test/icon/80px/55.jpg"
      "/img/test/icon/80px/56.jpg"
      "/img/test/icon/80px/57.jpg"
      "/img/test/icon/80px/58.jpg"
      "/img/test/icon/80px/59.jpg"
      "/img/test/icon/80px/6.jpg"
      "/img/test/icon/80px/60.jpg"
      "/img/test/icon/80px/61.jpg"
      "/img/test/icon/80px/62.jpg"
      "/img/test/icon/80px/63.jpg"
      "/img/test/icon/80px/64.jpg"
      "/img/test/icon/80px/65.jpg"
      "/img/test/icon/80px/66.jpg"
      "/img/test/icon/80px/67.jpg"
      "/img/test/icon/80px/68.jpg"
      "/img/test/icon/80px/69.jpg"
      "/img/test/icon/80px/7.jpg"
      "/img/test/icon/80px/70.jpg"
      "/img/test/icon/80px/71.jpg"
      "/img/test/icon/80px/72.jpg"
      "/img/test/icon/80px/73.jpg"
      "/img/test/icon/80px/74.jpg"
      "/img/test/icon/80px/75.jpg"
      "/img/test/icon/80px/76.jpg"
      "/img/test/icon/80px/77.jpg"
      "/img/test/icon/80px/78.jpg"
      "/img/test/icon/80px/79.jpg"
      "/img/test/icon/80px/8.jpg"
      "/img/test/icon/80px/80.jpg"
      "/img/test/icon/80px/81.jpg"
      "/img/test/icon/80px/82.jpg"
      "/img/test/icon/80px/83.jpg"
      "/img/test/icon/80px/84.jpg"
      "/img/test/icon/80px/85.jpg"
      "/img/test/icon/80px/86.jpg"
      "/img/test/icon/80px/87.jpg"
      "/img/test/icon/80px/88.jpg"
      "/img/test/icon/80px/89.jpg"
      "/img/test/icon/80px/9.jpg"
      "/img/test/icon/80px/90.jpg"
      "/img/test/icon/80px/91.jpg"
      "/img/test/icon/80px/92.jpg"
      "/img/test/icon/80px/93.jpg"
      "/img/test/icon/80px/94.jpg"
      "/img/test/icon/80px/95.jpg"
      "/img/test/icon/80px/96.jpg"
      "/img/test/icon/80px/97.jpg"
      "/img/test/icon/80px/98.jpg"
      "/img/test/icon/80px/99.jpg"
      "/img/test/kurukuru.gif"
      "/img/test/rank/grade_1.png"
      "/img/test/rank/grade_10.png"
      "/img/test/rank/grade_2.png"
      "/img/test/rank/grade_3.png"
      "/img/test/rank/grade_4.png"
      "/img/test/rank/grade_5.png"
      "/img/test/rank/grade_6.png"
      "/img/test/rank/grade_7.png"
      "/img/test/rank/grade_8.png"
      "/img/test/rank/grade_9.png"

    ]



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