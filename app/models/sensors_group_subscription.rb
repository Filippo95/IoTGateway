class SensorsGroupSubscription < ApplicationRecord

	validates :id_sensor_group, :id_sensor, presence: true, numericality: {only_float: true}
	#Aggiungere

	belongs_to :sensor 
	belongs_to :sensor_group
	
end
