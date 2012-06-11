class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :qr_code
      t.decimal :reward_value
      t.boolean :reward_redeemed

      t.timestamps
    end
  end
end
