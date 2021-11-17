class CreateBoons < ActiveRecord::Migration[6.1]
  def change
    create_table :boons do |t|
      t.references :olympian_god, null: false, foreign_key: true
      t.string :boon_name
      t.string :description
    end
  end
end
