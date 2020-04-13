class CreateSensorsGroupSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors_group_subscriptions do |t|
      
  
	  t.belongs_to :sensor 
	  t.belongs_to :sensor_group
      t.timestamps
    end
  end
end
