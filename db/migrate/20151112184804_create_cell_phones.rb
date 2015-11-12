class CreateCellPhones < ActiveRecord::Migration
  def change
    create_table :cell_phones do |t|
      t.date :occurence
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
