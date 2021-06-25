class EditIsAdminDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :is_admin, false
    change_column_default :users, :is_admin, from: false, to: false   
  end
end
