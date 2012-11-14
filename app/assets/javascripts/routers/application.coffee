class App.Routers.Application extends Backbone.Router
  routes:
    '' : 'default'
    'about_us': 'loadAboutUs'
    'fellowships': 'loadFellowships'
    'events': 'loadEvents'
    'news': 'loadNews'
  default:=>
    new App.Views.Application.Layout
  loadAboutUs:=>
    @default()
  loadFellowships:=>
    @default()
  loadEvents:=>
    @default()
  loadNews:=>
    @default()
