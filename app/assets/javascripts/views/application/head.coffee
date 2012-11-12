class App.Views.Application.Head extends Backbone.View
  initialize:->
    @render()
  render:->
    template = '''
      <div class="container">
        <h1><b>ALEMC</b></h1>
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
