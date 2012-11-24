class App.Views.Application.ServiceBar extends Backbone.View
  events:
    'click .sign_out': 'try_sign_out'
  initialize:->
    @render()
  render:=>
    template = '''
      <div class="username">Welcome, {{username}}!</div>|<div class="setting bar_button">setting</div>|<div class="sign_out bar_button">sign out</div>
    '''
    data =
      username: $.cookie('username')
    html = Mustache.render template, data 
    $(@el).html html
  try_sign_out:=>
    $.removeCookie 'remember_token'
    $.removeCookie 'username'
    @reload()
  reload:=>
    window.location.reload()
