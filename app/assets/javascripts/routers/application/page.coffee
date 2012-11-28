class App.Routers.Application.Page extends Backbone.Router
  routes:
    ''               : 'loadHome'
    'about_us'       : 'loadAboutUs'
    'fellowships'    : 'loadFellowships'
    'events'         : 'loadEvents'
    'news'           : 'loadNews'
    'contact'        : 'loadContact'
    'login'          : 'loadLogin'
    'create_account' : 'loadCreateAccount'
    'forgot_password': 'loadForgotPassword'
  loadHome:=>
    new App.Views.Home.Index el:'.content-body'
  loadAboutUs:=>
  loadFellowships:=>
  loadEvents:=>
  loadNews:=>
  loadContact:=>
  loadLogin:=>
    new App.Views.Login.Index el:'.content-body'
  loadCreateAccount:=>
    console.log "hihihih"
    new App.Views.CreateAccount.Index el:'.content-body' 
  loadForgotPassword:=>
    new App.Views.ForgotPassword.Index el:'.content-body'  
