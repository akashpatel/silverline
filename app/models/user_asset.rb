class UserAsset < ActiveRecord::Base
  
  belongs_to  :user_profile
  
  has_attached_file :image,
      :styles => {
          :pinterest_lg => "600>",
          :pinterest => "192>",
      }
  
  validates_attachment :image, :presence => true,                  
end
