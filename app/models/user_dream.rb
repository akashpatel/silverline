class UserDream < ActiveRecord::Base
  validates  :dream, :presence => true

  belongs_to  :user_profile
end

