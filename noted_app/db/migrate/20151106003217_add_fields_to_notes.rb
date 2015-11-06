class AddFieldsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :keyword, :string
    add_column :notes, :content, :string
    add_column :notes, :subject_name, :string
    add_column :notes, :published_by, :string
  end
end
