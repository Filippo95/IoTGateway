class ModificaSensorGroup < ActiveRecord::Migration[6.0]
  def change
    
    remove_column :sensors_groups, :id_user_group, :integer
    add_reference :sensors_groups, :user, index: true
    remove_column :sensors_group_subscriptions, :sensor_group_id, :integer
    add_reference :sensors_group_subscriptions, :sensors_group, index: true
    
  end
end
