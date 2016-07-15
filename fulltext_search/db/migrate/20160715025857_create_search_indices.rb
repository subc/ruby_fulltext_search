class CreateSearchIndices < ActiveRecord::Migration[5.0]
  def change
    create_table :search_indices do |t|
      t.string :key
      t.integer :page_id
      t.integer :pointer

      t.timestamps
    end
  end
end
