class App.Views.CreateAccount.Index extends Backbone.View
  events:
    'click .submit':'try_submit'
  initialize:->
    @render()
  render:=>
    template = '''
      <div class="create_account_form">
        <h1>Create an Account</h1>
	<div class="message"></div>
	<p>Username:</p>
	<input type="text" class="username form_input" />
	<p>Email Address: </p>
	<input type="text" class="email form_input" />
	<p>Password: </p>
	<input type="password" class="password form_input" />
	<p>Confirm Password: </p>
	<input type="password" class="password_confirmation form_input" />
	<br/>
        <div class="submit">submit</div>
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
  try_submit:=>
    console.log "try_submit"
    @model = new App.Models.User 
    username              = $('.username').val()
    email                 = $('.email').val()
    password              = $('.password').val()
    password_confirmation = $('.password_confirmation').val()
    @model.save
      username              : username
      email                 : email
      password              : password
      password_confirmation : password_confirmation
      success               : @handle_success
      error                 : @handle_error
  handle_success:=>
    message = 'Registered.'
    $('.message').addClass 'success'
    $('.message').html message
    @empty_form_inputs()
  empty_form_inputs:=>
    $('.form_input').val ''
  handle_error:=>
    message = 'An error has occurred.'
    $('.message').addClass 'error'
    $('.message').html message
