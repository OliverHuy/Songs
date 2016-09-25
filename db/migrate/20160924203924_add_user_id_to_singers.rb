class AddUserIdToSingers < ActiveRecord::Migration[5.0]
  def change
    add_column :singers, :user_id, :integer
  end
end
