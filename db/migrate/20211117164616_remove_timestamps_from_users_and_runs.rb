class RemoveTimestampsFromUsersAndRuns < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :created_at, :string
    remove_column :users, :updated_at, :string
    remove_column :runs, :updated_at, :string
  end
end
