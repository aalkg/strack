class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :sport_id
      t.string :data_type

      t.timestamps
    end
  end
end
