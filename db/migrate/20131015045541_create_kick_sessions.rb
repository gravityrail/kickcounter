class CreateKickSessions < ActiveRecord::Migration
  def change
    create_table :kick_sessions do |t|
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :kicks, :default => 0

      t.timestamps
    end
  end
end
