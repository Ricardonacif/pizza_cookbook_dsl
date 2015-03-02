#cookbook.rb
class Cookbook
  @pizzas = []

  def self.new_pizza name, &block
    pizza = Pizza.new(name)
    pizza.instance_eval(&block) if block_given?
    @pizzas << pizza
  end

  def self.pizzas
    @pizzas
  end

end