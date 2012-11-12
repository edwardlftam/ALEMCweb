class App.Views.Application.Footer extends Backbone.View
  initialize:->
    @render()
  render:=>
    template = '''
      <div class="container">
        ALEMC | Contact
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
