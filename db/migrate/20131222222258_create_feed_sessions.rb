class CreateFeedSessions < ActiveRecord::Migration
  def change
    create_table :feed_sessions do |t|
      t.datetime "started_at"
      t.datetime "ended_at"
      t.text "note"
      t.boolean "bottle", :default => false
      t.integer  "user_id"
      t.timestamps
    end
  end
end
