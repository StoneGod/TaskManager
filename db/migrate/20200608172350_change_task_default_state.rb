class ChangeTaskDefaultState < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :state, :string, null: false
  end
end
