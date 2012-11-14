class App.Views.Application.NavButton extends Backbone.View
  el:'.nav_menu'
  initialize:->
    @render()
  render:=>
    data =
      className: @className
      name: @options.name
    template = '''
      <div class="nav_button {{className}}">{{name}}</div>
    '''
    html = Mustache.render template, data 
    $(@el).append html
    $('.'+@className).bind 'click', @navigate
  navigate:=>
    window.location.href = @options.url
