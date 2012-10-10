class Quote < ActiveRecord::Base
  acts_as_taggable

  scope :previous, lambda { |p| {:conditions => ["id < ?", p.id], :limit => 1, :order => "id DESC"} }
  scope :next, lambda { |p| {:conditions => ["id > ?", p.id], :limit => 1, :order => "id"} }
  
end
