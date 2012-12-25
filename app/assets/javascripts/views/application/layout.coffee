class App.Views.Application.Layout extends Backbone.View
  initialize:->
    @render()
  render:=>
    new App.Views.Application.Head el:'.head'
    new App.Views.Application.NavMenu el:'.nav_menu'
    new App.Views.Application.Footer el:'.footer'
    @user = new App.Models.Session()
    authenticated = @user.is_logged_in()
    if authenticated
      if @user.admin
        new App.Views.Admin.AdminBar el: '.account_bar'
      else
        new App.Views.Application.ServiceBar el: '.account_bar'
    else
      new App.Views.Application.Login el: '.account_bar'
