class SensorsGroup < ApplicationRecord

	validates :nome, :id_user_group, presence: true
	#Aggiungere parte relativa all'user group cioè controllare che id del gruppo sia presente
	

	has_many :sensor_group_subscriptions
end
