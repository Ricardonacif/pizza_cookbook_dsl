#pizza.rb
class Pizza
  attr_accessor :name, :vegetable, :cheese, :sauce, :toppings, :bake_time

  def initialize name
    @name = name
  end

  def add_toppings *args
    raise "Too many toppings man!" if args.size > 4
    @toppings = args
  end

  def bake_for duration
    @bake_time = BakeTime.new(duration)
  end

  private

  def method_missing method_sym, *args
    method_name = method_sym.to_s
    if method_name.start_with? "add_"
      attribute_name = method_name.split(/^add_/)[1]
      self.send(attribute_name + "=", args[0])
    else
      super
    end
  end

end