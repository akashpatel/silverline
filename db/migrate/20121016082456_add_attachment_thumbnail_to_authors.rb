class AddAttachmentThumbnailToAuthors < ActiveRecord::Migration
  def self.up
    add_column :authors, :thumbnail_file_name, :string
    add_column :authors, :thumbnail_content_type, :string
    add_column :authors, :thumbnail_file_size, :integer
    add_column :authors, :thumbnail_updated_at, :datetime
  end

  def self.down
    remove_column :authors, :thumbnail_file_name
    remove_column :authors, :thumbnail_content_type
    remove_column :authors, :thumbnail_file_size
    remove_column :authors, :thumbnail_updated_at
  end
end
