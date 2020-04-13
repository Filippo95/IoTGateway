class SensorsGroupSubscription < ApplicationRecord
	belongs_to :sensor 
	belongs_to :sensor_group
	
end
