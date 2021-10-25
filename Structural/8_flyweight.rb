class Car
  attr_accessor :model, :price

  def initialize(model, price)
    @model = model
    @price = price
  end
end

class CarFactory
  def initialize
    @cars = []
  end

  def create(model, price)
    candidate = get_car model
    return candidate if candidate

    new_car = Car.new(model, price)
    @cars << new_car
    new_car
  end

  def get_car(model)
    @cars.find{|car| car.model == model}
  end
end

factory = CarFactory.new()

bmwX6 = factory.create('bmw', 10000)
audi = factory.create('audi', 12000)
bmwX3 = factory.create('bmw', 8000)

p bmwX6
p audi
p bmwX3
p bmwX6 == bmwX3
