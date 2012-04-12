class UserAsset < ActiveRecord::Base
  
  belongs_to  :user_profile
  
  has_attached_file :image,
      :styles => {
          :thumb     => "100x100##",
          :pinterest => "192>",
      }
  
  validates_attachment :image, :presence => true,                  
end
