class BetaSignup < ActiveRecord::Base
  validates   :email, :presence => true, :email => true

end
