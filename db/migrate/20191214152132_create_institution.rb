class CreateInstitution < ActiveRecord::Migration[6.0]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :description
      t.string :address
    end
  end
end
