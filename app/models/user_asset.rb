class UserAsset < ActiveRecord::Base
  
  belongs_to  :user_profile
  
  has_attached_file :image,
                    :styles => {
                        :thumb     => "100x100##",
                        :pinterest => "260>"
                    }
end
