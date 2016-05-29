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
     
    @bikes << bike
  end


  
end