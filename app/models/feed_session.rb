class FeedSession < ActiveRecord::Base
  attr_accessible :started_at, :ended_at, :note, :user_id, :user, :bottle
  belongs_to :user
end
