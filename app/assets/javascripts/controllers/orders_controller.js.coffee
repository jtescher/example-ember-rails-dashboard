Dashboard.OrdersController = Ember.ArrayController.extend({
  
  totalQuantity: (->
    @get('content').reduce(((previousValue, order) ->
      previousValue + order.quantity
    ), 0)
  ).property('@each')
  
  totalRevenue: (->
    @get('content').reduce(((previousValue, order) ->
      previousValue + parseFloat(order.revenue)
    ), 0)
  ).property('@each')
  
})
