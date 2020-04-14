class MisurationSubscription < ApplicationRecord
	validates :mac,:user_id,presence:true

	belongs_to :user
	belongs_to :sensor
end
