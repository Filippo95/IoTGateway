class CreateSensorsGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors_groups do |t|
      t.string :nome
      t.integer :id_user_group
      
      t.timestamps
    end
  end
end
