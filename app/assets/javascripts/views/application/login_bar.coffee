class App.Views.Application.Login extends Backbone.View
  events:
    'click .login': 'navigate_login'
    'click .create_account': 'navigate_create_account'
  initialize:->
    @render()
  render:=> 
    template = '''
      <div class="login bar_button">Log in</div> | <div class="create_account bar_button">Create an account</div>
    '''
    html = Mustache.render template, null
    $(@el).html html
  navigate_login:=>
    window.location.href = '/#login'
  navigate_create_account:=>
    window.location.href = '/#create_account'
