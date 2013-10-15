class KickSession < ActiveRecord::Base
  attr_accessible :ended_at, :kicks, :started_at

  def rate
    600.to_f / (ended_at - started_at).to_f
  end

end
