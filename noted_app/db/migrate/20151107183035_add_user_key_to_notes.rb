class AddUserKeyToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :users
  end
end
