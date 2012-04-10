class CreateUserAssets < ActiveRecord::Migration
  def change
    create_table :user_assets do |t|
      t.integer :user_profile_id

      t.timestamps
    end
  end
end
