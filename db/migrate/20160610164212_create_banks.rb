class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :minutes_remain, default: 1200
      t.integer :minutes_used, default: 0
      t.integer :instance_limit, default: 2

      t.timestamps null: false
    end
  end
end
