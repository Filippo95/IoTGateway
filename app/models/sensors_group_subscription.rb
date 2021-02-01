class SensorsGroupSubscription < ApplicationRecord

	validates :sensors_group_id, :sensor_id, presence: true
	#Aggiungere

	belongs_to :sensor 
	belongs_to :sensors_group
	
end
