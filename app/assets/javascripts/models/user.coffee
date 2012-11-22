class App.Models.User extends Backbone.Model
  url:->
    if @isNew()
      url = '/users/new'
    else
      url = '/users/#{id}'
  parse: (response)->
    @status = response.status
    @messages = response.messages
