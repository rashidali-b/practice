class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string "heading",:limit => 25 
      t.string "content",:limit => 1000
      t.timestamps
    end
  end
end
