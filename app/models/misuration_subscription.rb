class MisurationSubscription < ApplicationRecord
	belongs_to :user
	belongs_to :sensor
end
