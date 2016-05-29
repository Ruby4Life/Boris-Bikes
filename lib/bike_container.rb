module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes
    @bikes ||=[]
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "Station is full" if full?
    bikes << bike
  end
  
  def release(bike)
    raise "bike not available" if !bike.broken? && available_bikes.count == 0
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject(&:broken?)
  end

  def broken_bikes
    bikes - available_bikes
  end



  
end