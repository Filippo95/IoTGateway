namespace :sensor_life do
  desc "TODO"
  task check_last_misuration: :environment do
  	puts 'Ciao, sono il task che controlla se i sensori sono vivi'
  	@sensors=Sensor.all
  	@sensors.each do |sensor|
  		m=sensor.misurations.order("created_at").last
  		if m !=nil 
  			#p '------------------------------------------------'
  			#p m
  			#p "ore downtime"+sensor.downtime_to_alarm.strftime('%H')
        #p "minuti downtime"+sensor.downtime_to_alarm.strftime('%M')
  			#p "in tempo"+ (m.created_at+sensor.downtime_to_alarm.strftime('%H').to_i.hours+sensor.downtime_to_alarm.strftime('%M').to_i.minutes > Time.now).to_s
  			#p "tempo sotto: "+(m.created_at+sensor.downtime_to_alarm.strftime('%H').to_i.hours+sensor.downtime_to_alarm.strftime('%M').to_i.minutes).to_s
  			#p "created_at"+m.created_at.to_s

        if(m.created_at+sensor.downtime_to_alarm.strftime('%H').to_i.hours+sensor.downtime_to_alarm.strftime('%M').to_i.minutes > Time.now)
          p "tutto ok"
        else 
          p "invio mail"
          OrderMailer.send_alarm(sensor).deliver_now

        end
  		end
  	end


  end

end
