class AddUsersToUniversity < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :university, index: true
  end
end
