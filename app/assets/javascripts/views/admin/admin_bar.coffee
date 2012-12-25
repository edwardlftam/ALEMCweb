class App.Views.Admin.AdminBar extends Backbone.View
  events:
    'click .sign_out': 'try_sign_out'
  initialize:->
    @render()
  render:=>
    template = '''
        <div class="username">Welcome, {{username}}!</div>	       |
      	<div class="admin_bar_button bar_button manage">manage</div>   | 
	<div class="bar_button admin_bar_button profile">profile</div> | 
	<div class="bar_button admin_bar_button sign_out">sign out</div>
    '''
    data = 
      username: $.cookie('username')
    html = Mustache.render template, data 
    $(@el).append html
  try_sign_out:=>
    $.removeCookie 'remember_token'
    $.removeCookie 'username'
    $.removeCookie 'admin'
    @reload()
  reload:=>
    window.location.reload()
