class AddUsersToInstitution < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :institution, index: true
  end
end
