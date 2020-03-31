class Sensor < ApplicationRecord
	has_many :misuration_subscriptions
	has_many :misurations 
	has_many :sensor_group_subscriptions
	belongs_to :user
	
end
