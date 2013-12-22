class PoopSession < ActiveRecord::Base
  attr_accessible :note, :user_id, :user, :poo, :pee
  belongs_to :user
end
