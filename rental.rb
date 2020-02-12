class Rental

  attr_reader :bike, :luggage

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage
  end

  def price
    bike_price + luggage_price
  end

  def weight
    bike_weight + luggage_weight
  end

  def bike_price
    self.bike.price + bike_weight * 2
  end

  def bike_weight
    self.bike.weight
  end

  def luggage_price
    luggage_weight * 2
  end

  def luggage_weight
    self.luggage.weight
  end

end
