class Misuration < ApplicationRecord
	validates :mac, :value, :unit, presence: true
	validates :value, numericality: true
	validate :mac_presence
    belongs_to :sensor

def mac_presence
    if Sensor.exists?(:mac => self.mac)
        self.sensor_id= Sensor.find_by(mac: self.mac).id
    end
end


	


def self.getMisurations
	 # gli utenti possono vedere le misurazioni dei sensori che possiedono (ovvero dei sensori che hanno come user_id, quello dell'utente corrente)
    #@user_sensors=Sensor.where(:user_id=>current_user.id)
    #gli utenti possono vedere le misurazioni dei sensori pubblici che ai quali sono iscritti ovvero che in misuration_subscriptions c'è un record 
    #con user_id, quello dell'utente corrente) e come id_sensor l'id del sensore ricercato 
    #@misurations = Misuration.where(mac:@user_sensors.mac)
    return self.where('mac' => "fds")
end



end
