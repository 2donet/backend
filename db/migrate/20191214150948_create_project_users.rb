class CreateProjectUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_users do |t|
      t.references :project, index: true
      t.references :user, index: true
    end
  end
end
