class CreateMisurationSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :misuration_subscriptions do |t|
    
      t.belongs_to :user
      t.belongs_to :sensor
      t.timestamps
    end
  end
end
