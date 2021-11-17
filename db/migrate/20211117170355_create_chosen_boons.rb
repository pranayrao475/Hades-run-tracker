class CreateChosenBoons < ActiveRecord::Migration[6.1]
  def change
    create_table :chosen_boons do |t|
      t.references :boon, null: false, foreign_key: true
      t.references :run, null: false, foreign_key: true
    end
  end
end
