class App.Views.Home.Index extends Backbone.View
  initialize:->
    @pic_urls = ["/assets/home1_small.jpg", "/assets/home2_small.jpg"]
    @numberOfPictures = @pic_urls.length
    @next_pic = 1
    @render()
    setTimeout(@toggle_pic, 10000)
  render:=>
    template = '''
      <div class="home_img">
        <img src="/assets/home1_small.jpg" />
      </div>
      <div class="top_news"></div>
      <div class="top_events"></div>

    '''
    console.log "hello there"
    html = Mustache.render template, null
    $(@el).append html
  toggle_pic:=>
    src = @pic_urls[@next_pic]
    html = '<img src="' + src + '" />' 
    $(".home_img").empty()
    $(".home_img").append html
    @next_pic = (@next_pic + 1) % @numberOfPictures 
    setTimeout(@toggle_pic, 10000)


  
