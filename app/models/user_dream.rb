class UserDream < ActiveRecord::Base
  validates  :dream, :presence => true
end

