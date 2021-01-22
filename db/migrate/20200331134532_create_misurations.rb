class CreateMisurations < ActiveRecord::Migration[6.0]
  def change
    create_table :misurations do |t|
      t.string :mac
      t.float :value
      t.string :unit
      t.belongs_to :sensor
      t.timestamps
    end
  end
end
