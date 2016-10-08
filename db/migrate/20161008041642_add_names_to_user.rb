class AddNamesToUser < ActiveRecord::Migration
  def change
    add_column :users, :team, :integer
    add_column :users, :inte1, :string
    add_column :users, :cuenta1, :integer
    add_column :users, :inte2, :string
    add_column :users, :cuenta2, :integer
    add_column :users, :inte3, :string
    add_column :users, :cuenta3, :integer
    add_column :users, :inte4, :string
    add_column :users, :cuenta4, :integer
    add_column :users, :inte5, :string
    add_column :users, :cuenta5, :integer
  end
end
