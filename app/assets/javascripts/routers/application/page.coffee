class App.Routers.Application.Page extends Backbone.Router
  routes:
    '': 'loadHome'
    'about_us': 'loadAboutUs'
    'fellowships': 'loadFellowships'
    'events': 'loadEvents'
    'news': 'loadNews'
    'contact': 'loadContact'
    'login':'loadLogin'
  loadHome:=>
    new App.Views.Home.Index el:'.content-body'
  loadAboutUs:=>
  loadFellowships:=>
  loadEvents:=>
  loadNews:=>
  loadContact:=>
  loadLogin:=>
    new App.Views.Login.Index el:'.content-body'
