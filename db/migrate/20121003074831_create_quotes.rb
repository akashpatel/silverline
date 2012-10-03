class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :user_profile_id
      t.text :description
      t.string :author_name

      t.timestamps
    end
  end
end
