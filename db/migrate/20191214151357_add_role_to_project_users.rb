class AddRoleToProjectUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :project_users, :role, :integer, default: 0
  end
end
