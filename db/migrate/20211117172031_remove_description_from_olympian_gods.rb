class RemoveDescriptionFromOlympianGods < ActiveRecord::Migration[6.1]
  def change
    remove_column :olympian_gods, :description, :string
  end
end
