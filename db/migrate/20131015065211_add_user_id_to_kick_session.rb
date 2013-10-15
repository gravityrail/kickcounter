class AddUserIdToKickSession < ActiveRecord::Migration
  def change
    add_column :kick_sessions, :user_id, :integer
  end
end
