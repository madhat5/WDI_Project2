class AddUserIdToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :user
  end
end
