class Quote < ActiveRecord::Base
  belongs_to :author

  validates :description, :author_id, :tag_list, :presence => true

  acts_as_taggable

  scope :previous, lambda { |p| {:conditions => ["id < ?", p.id], :limit => 1, :order => "id DESC"} }
  scope :next, lambda { |p| {:conditions => ["id > ?", p.id], :limit => 1, :order => "id"} }
  
end
