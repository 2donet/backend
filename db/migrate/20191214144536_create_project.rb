class CreateProject < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :invitation, default: 0
      t.string :name
      t.string :description
      t.string :problem
      t.string :goal
    end
  end
end
