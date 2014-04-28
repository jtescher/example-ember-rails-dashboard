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
  
  chartSeries: (->
    revenues = @map((order)->
      parseFloat(order.revenue)
    )
    quantities = @mapBy('quantity')
    
    [
      { 
        name: 'Quantity',
        data: quantities
      },
      { 
        name: 'Revenue',
        data: revenues
      }
    ]
  ).property('@each')
  
})
