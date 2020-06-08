class ChangeUsersEmailAndName < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    add_index :users, :email, unique: true
  end
end
