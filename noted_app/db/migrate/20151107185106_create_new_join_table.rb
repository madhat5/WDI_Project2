class CreateNewJoinTable < ActiveRecord::Migration
  def change
    create_table :notes_users do |t|
      t.belongs_to :note, index: true
      t.belongs_to :user, index: true

    end
  end
end
