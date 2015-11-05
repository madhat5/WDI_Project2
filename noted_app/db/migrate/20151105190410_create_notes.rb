class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|

      t.string :keyword
      t.string :content
      t.string :subject_name
      t.string :published_by

      t.timestamps null: false
    end
  end
end
