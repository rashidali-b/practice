class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string "first_name",:limit => 25
      t.string "last_name",:limit => 25
      t.string "email",:default => '', :null => false
      t.string "password",:title => 25
      # t.datetime "created_at"
      # t.datetime "created_at"
      t.timestamps
    end
  end
end
