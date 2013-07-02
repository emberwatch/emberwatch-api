class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :subtitle
      t.references :person, index: true
      t.datetime :delivered_at
      t.string :video_url
      t.string :details_url
      t.string :slides_url
      t.references :meet, index: true

      t.timestamps
    end

    add_index :talks, :title
    add_index :talks, :delivered_at, order: { delivered_at: :desc }
  end
end
