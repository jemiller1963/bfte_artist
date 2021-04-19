class ChangeNameInUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :studio, :string
    add_column :users, :lname, :string
    add_column :users, :desc, :text
    add_column :users, :instagram, :string
    add_column :users, :facebook, :string
    add_column :users, :webpage, :string
    rename_column :users, :name, :fname
    remove_column :users, :username, :string
  end
end
