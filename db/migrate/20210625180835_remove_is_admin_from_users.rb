class RemoveIsAdminFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :is_admin, :string
  end
end
