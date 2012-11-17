class App.Views.Application.Layout extends Backbone.View
  initialize:->
    @render()
  render:=>
    new App.Views.Application.Head el:'.head'
    new App.Views.Application.NavMenu el:'.nav_menu'
    new App.Views.Application.Footer el:'.footer'
    new App.Views.Application.Login el: '.login_bar'
