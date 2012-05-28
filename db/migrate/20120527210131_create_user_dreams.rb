class CreateUserDreams < ActiveRecord::Migration
  def change
    create_table :user_dreams do |t|
      t.integer :id
      t.string :dream

      t.timestamps
    end
  end
end
