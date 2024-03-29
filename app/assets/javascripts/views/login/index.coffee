class App.Views.Login.Index extends Backbone.View
  events:
    'click .login.submit': 'try_submit'
  initialize:->
    @model = new App.Models.Session
    @render()
    @hide_message_box()
  render:=>
    template = '''
      <div class="login_form">
        <h1>Log In</h1>
	<div class="login message_box"></div>
        <p>Email:</p>
        <input type="text" class="form_input email" />
	<p>Password:</p>
	<input type="password" class="form_input password" />
	<br/>
	<div class="login submit">submit</div>
	<br />
	<a href="#forgot_password">Forgot Password?</a>
      </div>
    '''
    html = Mustache.render template, null 
    $(@el).html html
  try_submit:=>
    data = 
      email    : $('.email').val()
      password : $('.password').val()
    @model.save data,
      success: @post_submit
  post_submit:=>
    authenticated = @model.is_logged_in()
    if authenticated 
      console.log "post_submit"
      @redirect_home()
    else
      $('.login.message_box').addClass 'error'
      $('.login.message_box').html @model.error_message
      @show_message_box()
  hide_message_box:=>
    $('.login.message_box').hide()
  show_message_box:=>
    $('.login.message_box').show()
  redirect_home:=>
    window.location.replace '/'
