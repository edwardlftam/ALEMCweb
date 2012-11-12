class App.Routers.Application extends Backbone.Router
  routes:
    '' : 'default'
  default:->
    new App.Views.Application.Layout
