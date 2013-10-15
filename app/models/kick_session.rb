class KickSession < ActiveRecord::Base
  attr_accessible :ended_at, :kicks, :started_at
end
