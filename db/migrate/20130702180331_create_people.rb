class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :github
      t.string :twitter
      t.string :url

      t.timestamps
    end

    add_index :people, :name
    add_index :people, :github
    add_index :people, :twitter
  end
end
