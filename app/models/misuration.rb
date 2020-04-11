class Misuration < ApplicationRecord
	validates :mac, :value, :unit,:sensor_id, presence: true
	validates :value, numericality: true
	validate :mac_presence


def mac_presence
  return false if !Sensor.exists?(:mac => self.mac)
end

	belongs_to :sensor
end

def self.getMisurations
	 # gli utenti possono vedere le misurazioni dei sensori che possiedono (ovvero dei sensori che hanno come user_id, quello dell'utente corrente)
    #@user_sensors=Sensor.where(:user_id=>current_user.id)
    #gli utenti possono vedere le misurazioni dei sensori pubblici che ai quali sono iscritti ovvero che in misuration_subscriptions c'è un record 
    #con user_id, quello dell'utente corrente) e come id_sensor l'id del sensore ricercato 
    #@misurations = Misuration.where(mac:@user_sensors.mac)
    return Misuration.where(mac => "fds")
end
