class App.Views.ForgotPassword.Index extends Backbone.View
  initialize:->
    @render()
    @hide_message_box()
    console.log "hihihihi"
  render:=>
    template = '''
      <div class="forgot_password_form">
      	<h1>
	  Password Reset
	</h2>
	<div class="message_box"></div>
	<div class="note forgot_password">
	  Please enter your email. A temporary password will be sent to your email address.
	</div>
        <p>Email Address:</p>
	<input type="text" class="forgot_password_input form_input" />
	<br />
	<div class="submit forgot_password_submit">submit</div>
      </div>
      
    '''
    html = Mustache.render template, null
    $(@el).html html
  hide_message_box:=>
    $('.message_box').hide()
  show_message_box:=>
    $('.message_box').show()
