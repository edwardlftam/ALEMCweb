class App.Views.Application.Head extends Backbone.View
  events:
    'click .logo': 'navigateHome'
  initialize:->
    @render()
  render:->
    template = '''
      <div class="container">
        <h1 class="logo"><b>豐盛生命教會 ALEMC</b></h1>
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
  navigateHome:=>
    window.location.href = ''
