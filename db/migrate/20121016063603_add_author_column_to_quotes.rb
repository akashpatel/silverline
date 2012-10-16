class AddAuthorColumnToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :author_id, :integer

  end
end
