class SensorsGroup < ApplicationRecord

	validates :nome, :user_id, presence: true
	#Aggiungere parte relativa all'user group cioè controllare che id del gruppo sia presente
	
	belongs_to :user
	has_many :sensors_group_subscriptions
	has_many :sensors, through: :sensors_group_subscriptions
end
