class SensorsGroupSubscription < ApplicationRecord

	validates :sensor_group_id, :sensor_id, presence: true, numericality: {only_integer: true}
	#Aggiungere

	belongs_to :sensor 
	belongs_to :sensor_group
	
end
