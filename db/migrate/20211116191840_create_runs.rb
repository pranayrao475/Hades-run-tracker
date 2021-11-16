class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.integer :user_id
      t.integer :cleared_levels

      t.timestamps
    end
  end
end
