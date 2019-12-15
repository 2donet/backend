class CreateUniversity < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :description
      t.string :address
    end
  end
end
