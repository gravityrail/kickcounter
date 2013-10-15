class KickSession < ActiveRecord::Base
  attr_accessible :ended_at, :kicks, :started_at, :user_id, :user

  belongs_to :user

  def rate
    600.to_f / (ended_at - started_at).to_f
  end

end
