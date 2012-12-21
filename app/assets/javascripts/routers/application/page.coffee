class App.Routers.Application.Page extends Backbone.Router
  current_page: null
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
  change_page:=>
    if @current_page
      @current_page.remove()
      @current_page.unbind()
      @append_container()
  append_container:=>
    html = '''
      <div class="container"></div>
    '''
    $('.content').append html 
  loadHome:=>
    @change_page()
    new App.Views.Home.Index el:'.content-body'
  loadAboutUs:=>
  loadFellowships:=>
  loadEvents:=>
  loadNews:=>
  loadContact:=>
  loadLogin:=>
    @change_page()
    new App.Views.Login.Index el:'.content-body'
  loadCreateAccount:=>
    @change_page()
    new App.Views.CreateAccount.Index el:'.content-body' 
  loadForgotPassword:=>
    @change_page()
    new App.Views.ForgotPassword.Index el:'.content-body'  
