require './pizza.rb'
require './cookbook.rb'
require './bake_time.rb'

Cookbook.new_pizza "Frango Catupiry" do
  add_vegetable 'tomatoes'
  add_sauce 'barbecue'
  add_cheese 'catupiry'
  add_toppings 'chicken', 'bacon'
  bake_for(15.minutes).on(:high_temperature)
end