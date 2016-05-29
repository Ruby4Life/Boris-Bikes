class Bike

	def initialize
		@broken = false
	end

    def broken?
		@broken  
	end

	def break!
		@broken = false
		self
	end

	

end
