class MisurationSubscription < ApplicationRecord
	validates :sensor_id,:user_id,presence:true

	belongs_to :user
	belongs_to :sensor
end
