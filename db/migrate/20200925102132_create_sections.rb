class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.integer "page_id"
      t.string  "page"
      t.integer "position"
      t.boolean "visible",:default => false 
      t.string  "content_typ"
      t.string  "content"
      t.timestamps
      # add_index('sections','page_id')
      # t.timestamps
    end
  end
end
