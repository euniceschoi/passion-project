class CreateFriends < ActiveRecord::Migration
  def change
    create_table(:friends) do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.timestamps
    end
  end
end
