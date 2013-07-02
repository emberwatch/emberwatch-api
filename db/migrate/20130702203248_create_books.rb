class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.references :person, index: true
      t.references :publisher, index: true
      t.integer :price
      t.string :url

      t.timestamps
    end

    add_index :books, :title
  end
end
