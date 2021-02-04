class OrderMailer < ApplicationMailer
  def new_misuration(misuration)
    @misuration = misuration
    @sensor = @misuration.sensor

    mail to: @sensor.user.email,
   		 Subject: "Nuova misurazione per il sensore #{@sensor.mac}"
  end

  def send_alarm(sensor)
    @sensor = sensor
    

    mail to: @sensor.user.email,
   		 Subject: "Il sensore  con mac: #{@sensor.mac} è in ritardo!"
  end
end
