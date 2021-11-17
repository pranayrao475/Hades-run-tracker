class CreateOlympianGods < ActiveRecord::Migration[6.1]
  def change
    create_table :olympian_gods do |t|
      t.string :name
      t.string :title
      t.string :image
      t.string :description
    end
  end
end
