class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :name,               null: false
      t.string :program,            null: false
      t.string :memo
      t.integer :user_id
      t.timestamps
    end
  end
end
