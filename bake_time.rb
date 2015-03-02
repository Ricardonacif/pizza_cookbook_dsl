#bake_time.rb
require 'active_support/time'

class BakeTime
  attr_accessor :duration, :temperature

  def initialize duration
    @duration = duration
  end

  def on temperature
    @temperature = temperature
  end
end