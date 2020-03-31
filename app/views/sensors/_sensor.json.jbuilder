json.extract! sensor, :id, :mac, :url, :tipo, :latitudine, :longitudine, :unit_misura, :owner, :public, :downtime_to_alarm, :last_firmware_update, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)
