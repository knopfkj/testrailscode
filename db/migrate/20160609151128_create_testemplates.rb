class CreateTestemplates < ActiveRecord::Migration
  def change
    create_table :testemplates do |t|
      t.string :field1
      t.decimal :field2
      t.boolean :field3

      t.timestamps null: false
    end
  end
end
