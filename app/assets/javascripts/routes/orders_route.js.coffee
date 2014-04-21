Dashboard.OrdersRoute = Ember.Route.extend({
  model: ->
    [
      {
        id: 1,
        firstName: 'James',
        lastName: 'Deen',
        quantity: 1,
        revenue: '10.00',
      },
      {
        id: 2,
        firstName: 'Alex',
        lastName: 'Baldwin',
        quantity: 2,
        revenue: '20.00',
      }
    ]
})
