class App.Models.Session extends Backbone.Model
  url: '/sessions/new'
  remember_token: null 
  username: null 
  initialize:->
    @load_session()
  load_session:=>
    @remember_token = $.cookie('remember_token')
    @username       = $.cookie('username')
  is_logged_in:=>
    @remember_token != null
  parse:(response)=>
    $.cookie 'remember_token', response.remember_token
    $.cookie 'username', response.username
    @remember_token = $.cookie('remember_token')
    @username       = $.cookie('username')
    @error_message  = response.error
