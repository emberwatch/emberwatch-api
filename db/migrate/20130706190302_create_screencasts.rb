class CreateScreencasts < ActiveRecord::Migration
  def change
    create_table :screencasts do |t|
      t.references :person, index: true
      t.references :publisher, index: true
      t.string :title
      t.string :subtitle
      t.datetime :published_at
      t.string :url
      t.string :video_url

      t.timestamps
    end

    add_index :screencasts, :title
    add_index :screencasts, :published_at, order: { published_at: :desc }
  end
end
