class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.integer "subject_id"
      t.string  "page"
      t.string  "permalink"
      t.integer "position"
      t.boolean "visible",:default => false 
      t.timestamps
      # add_index('pages','subject_id')
      # add_index('pages','permalink')
    end
  end
end
