class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :metric_id
      t.string :data

      t.timestamps
    end
  end
end
