class Misuration < ApplicationRecord
	validates :mac, :value, :unit,:sensor_id, presence: true
	validates :value, numericality: true
	validate :mac_presence


def mac_presence
  return false if !Sensors.where(mac: self.mac).exists?
end

	belongs_to :sensor
end
