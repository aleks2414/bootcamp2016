class AddAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :booleann, default:false
  end
end
