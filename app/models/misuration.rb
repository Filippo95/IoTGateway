class Misuration < ApplicationRecord
	validates :mac, :value, :unit, presence: true
	validates :value, numericality: true
	#validate :mac_presence

#def mac_presence
 # return true if Sensors.where(mac: self.mac).exists?
#end

	belongs_to :sensor
end
