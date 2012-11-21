class App.Views.CreateAccount.Index extends Backbone.View
  initialize:->
    @render()
  render:=>
    template = '''
      <div class="create_account_form">
        <h1>Create an Account</h1>
	<p>Username:</p>
	<input type="text" class="username form_input" />
	<p>Email Address: </p>
	<input type="text" class="email form_input" />
	<p>Password: </p>
	<input type="text" class="password form_input" />
	<p>Confirm Password: </p>
	<input type="text" class="password_confirm form_input" />
	<br/>
        <div class="submit">submit</div>
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
