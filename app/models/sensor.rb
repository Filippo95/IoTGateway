class Sensor < ApplicationRecord
	validates :mac,:url,:tipo,:latitudine,:longitudine,:unit_misura,presence:true
	validates :mac, uniqueness:true
	#converte un intero in float 7->7.0
	validates :latitudine,:longitudine,:downtime_to_alarm, numericality: {only_float: true}

	#come fare il validates su last_firware_update date?
	validates :public, inclusion: { in: [ true, false ] }

	has_many :misuration_subscriptions
	has_many :misurations 
	has_many :sensor_group_subscriptions
	belongs_to :user
	
end

