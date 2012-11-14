class App.Views.Application.NavMenu extends Backbone.View
  initialize:->
    @render()
  render:=>
    $(@el).empty()
    buttonsData = NavData
    _.each buttonsData, (data)->
      new App.Views.Application.NavButton data
