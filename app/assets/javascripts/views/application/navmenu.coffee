class App.Views.Application.NavMenu extends Backbone.View
  initialize:->
    @render()
  render:=>
    template = '''
      <ul>
        <li>item 1</li>
	<li>item 2</li>
        <li>item 3</li>
        <li>item 4</li>
        <li>item 5</li>
      </ul>
    '''
    html = Mustache.render template, null
    $(@el).html html
