class CreateTaggedReleases < ActiveRecord::Migration
  def change
    create_table :tagged_releases do |t|
      t.string :title
      t.string :project
      t.string :tag
      t.string :build
      t.string :announcement
      t.datetime :tagged_at
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :tagged_releases, :tag
    add_index :tagged_releases, :tagged_at, order: { tagged_at: :desc }
    add_index :tagged_releases, [:project, :tag], unique: true
  end
end
