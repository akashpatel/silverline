class UserProfile < ActiveRecord::Base
  
  attr_accessible :image_path, :first_name, :last_name, :zipcode

  belongs_to  :user
  has_many    :user_assets
  has_many    :user_dreams

  def full_name
    "#{first_name} #{last_name}"
  end

  def image_path
    self[:image_path].gsub("type=square","type=large")
  end
end
