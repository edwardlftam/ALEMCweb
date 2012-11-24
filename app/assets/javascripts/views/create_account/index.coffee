class App.Views.CreateAccount.Index extends Backbone.View
  events:
    'click .create_accoutn.submit':'try_submit'
  initialize:->
    @model = new App.Models.User 
    @render()
    @hide_message_box()
  render:=>
    template = '''
      <div class="create_account_form">
        <h1>Create an Account</h1>
	<div class="create_account message_box"></div>
	<p>Username:</p>
	<input type="text" class="username form_input" />
	<p>Email Address: </p>
	<input type="text" class="email form_input" />
	<p>Password: </p>
	<input type="password" class="password form_input" />
	<p>Confirm Password: </p>
	<input type="password" class="password_confirmation form_input" />
	<br/>
        <div class="create_accoutn submit">submit</div>
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
  try_submit:=>
    data =
      username              : $('.username').val()
      email                 : $('.email').val()
      password              : $('.password').val()
      password_confirmation : $('.password_confirmation').val()
    @model.save data,
      success: @post_save
  post_save:=>
    @empty_message_box()
    @remove_message_type()
    status = @model.status
    messages = @model.messages
    $('.message_box').addClass @model.status
    _.each @model.messages, (message)->
      html = '<div class="message">' + message + '</div>'
      $('.create_account.message_box'). append html 
    @empty_form_inputs() if status is  "success" 
    @show_message_box()
  empty_form_inputs:=>
    $('.form_input').val ''
  empty_message_box:=>
    $('.create_account.message_box').empty()
  hide_message_box:=>
    $('.create_account.message_box').hide()
  show_message_box:=>
    $('.create_account.message_box').show()
  remove_message_type:=>
    $('.create_account.message_box').removeClass 'success'
    $('.create_account.message_box').removeClass 'error'
