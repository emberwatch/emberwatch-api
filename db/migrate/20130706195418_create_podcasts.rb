class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :url
      t.integer :episode
      t.references :publisher, index: true
      t.datetime :published_at
      t.integer :duration

      t.timestamps
    end

    add_index :podcasts, :title
    add_index :podcasts, :published_at, order: { published_at: :desc }
  end
end
