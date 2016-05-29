require_relative 'bike_container'
require './lib/garage'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def collect_broken_bikes_from(holder)
		holder.broken_bikes.each do |broken_bike|
			collect_bike(holder, broken_bike)
		end
	end

	private

	def collect_bike(holder, bike)
		dock(bike)
		holder.release(bike)
	end

end
