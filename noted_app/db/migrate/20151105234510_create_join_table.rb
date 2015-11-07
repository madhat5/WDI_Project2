class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :notes, :users do |t|
      t.integer :note_id
      t.integer :user_id
    end
  end
end
