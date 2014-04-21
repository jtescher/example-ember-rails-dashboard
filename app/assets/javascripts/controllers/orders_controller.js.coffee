Dashboard.OrdersController = Ember.ArrayController.extend({
  
  totalQuantity: (->
    @reduce(((previousValue, order) ->
      previousValue + order.quantity
    ), 0)
  ).property('@each')
  
  totalRevenue: (->
    @reduce(((previousValue, order) ->
      previousValue + parseFloat(order.revenue)
    ), 0)
  ).property('@each')
  
})
