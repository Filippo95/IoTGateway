class SensorsGroup < ApplicationRecord
	has_many :sensor_group_subscriptions
end
