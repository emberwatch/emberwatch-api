class JoinPeopleAndPodcasts < ActiveRecord::Migration
  def change
    create_join_table :people, :podcasts do |t|
      t.index :person_id
      t.index :podcast_id
    end
  end
end
