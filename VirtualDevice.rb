#!/usr/bin/ruby

require 'faraday'
require 'json'

begin
  sleeptime=ARGV[0].to_i
  backend_host=ARGV[1]
  backend_port=ARGV[2]
  user_email=ARGV[3]

  puts "Performing http post request every "+sleeptime.to_s+" seconds, to "+backend_host+":"+backend_port+" with user email: "+user_email
  while true do
    url='http://'+backend_host+':'+backend_port+'/receiver/sensors.json?email='+user_email
    response=Faraday.get(url,{'Accept'=>'application/json'})
    data=JSON.parse response.body
    data.each do |sensor|
      @num=rand(1..999)
  		data={"misuration[mac]": sensor['mac'], "misuration[value]": @num, "misuration[unit]": sensor['unit_misura']}
  		res= Faraday.new(url: 'http://'+backend_host+':'+backend_port).post('/receiver/recevie.json', data)
  		puts data.to_s+">>>"+res.body
    end
    sleep(sleeptime)
  end
end
