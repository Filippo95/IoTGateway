class CreateSensors < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors do |t|
      t.string :mac
      t.string :url
      t.string :tipo
      t.string :latitudine
      t.string :longitudine
      t.string :unit_misura
      t.belongs_to :user
      t.boolean :public
      t.time :downtime_to_alarm
      t.date :last_firmware_update
      
      t.timestamps
    end
  end
end
