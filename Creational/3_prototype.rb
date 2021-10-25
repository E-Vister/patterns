class Car
  def initialize
    @wheels = 4
  end

  def init
    puts "I have a #{@wheels} wheels, my owner is #{@owner}"
  end
end

class CarWithOwner < Car
  def initialize
    super
    @owner = 'Dmitry'
  end
end

CarWithOwner.new.init