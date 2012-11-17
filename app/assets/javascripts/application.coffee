#= require init
#= require lib/jquery
#= require lib/underscore
#= require lib/backbone
#= require lib/mustache
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./models
#= require_tree ./routers

$ ->
  new App.Views.Application.Layout
  new App.Routers.Application.Page
  Backbone.history.start()
