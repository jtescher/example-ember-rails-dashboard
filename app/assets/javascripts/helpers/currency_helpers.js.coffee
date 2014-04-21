Ember.Handlebars.registerBoundHelper('numberToCurrency', (number) ->
  accounting.formatMoney(number)
)
