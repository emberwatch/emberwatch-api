class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :name
      t.string :kind
      t.string :url
      t.integer :meetup_id

      t.timestamps
    end

    add_index :meets, :name
  end
end
