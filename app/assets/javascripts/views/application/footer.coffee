class App.Views.Application.Footer extends Backbone.View
  events:
    'click .alemc': 'navigateALEMC'
    'click .footer_contact': 'navigateContact'
  initialize:->
    @render()
  render:=>
    template = '''
      <div class="container">
        <div class="footer_button alemc">ALEMC</div> | <div class="footer_button footer_contact">Contact</div>
      </div>
    '''
    html = Mustache.render template, null
    $(@el).html html
  navigateALEMC:=>
    window.location.href = ''
  navigateContact:=>
    window.location.href = '/#contact'
