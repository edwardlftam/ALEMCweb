class App.Views.Login.Index extends Backbone.View
  initialize:->
    @render()
  render:=>
    template = '''
      <div class="login_form">
        <h1>Log In</h1>
        <p>Username:</p>
        <input type="text" class="form_input username" />
	<p>Password:</p>
	<input type="text" class="form_input password" />
	<br/>
	<div class="submit">submit</div>
      </div>
    '''
    html = Mustache.render template, null 
    $(@el).html html
