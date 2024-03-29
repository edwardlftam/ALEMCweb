class App.Models.Session extends Backbone.Model
  url: '/sessions/new'
  remember_token: null 
  username: null 
  initialize:->
    @load_session()
  load_session:=>
    @remember_token = $.cookie 'remember_token'
    @username       = $.cookie 'username'
    @admin          = $.cookie 'admin'
  is_logged_in:=>
    @remember_token != null
  parse:(response)=>
    $.cookie 'remember_token', response.remember_token, 
      path    : '/'
      expires : 1
    $.cookie 'username', response.username,
      path    : '/'
      expires : 1
    $.cookie 'admin', response.admin,
      path    : '/'
      expires : 1
    console.log response.admin  
    @load_session()
    @error_message  = response.error
