class AddUsersToUniversity < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :institute, index: true
  end
end
