class CreatePoopSessions < ActiveRecord::Migration
  def change
    create_table :poop_sessions do |t|
      t.text "note"
      t.boolean "poo", :default => false
      t.boolean "pee", :default => false
      t.integer  "user_id"
      t.timestamps
    end
  end
end
