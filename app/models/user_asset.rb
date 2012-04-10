class UserAsset < ActiveRecord::Base
  
  belongs_to  :user_profile
  
  has_attached_file :image,
      :styles => {
          :thumb     => "100x100##",
          :pinterest => "300x300>",
      }
  
  validates_attachment :image, :presence => true,                  
end
