class AddTextToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_text, :string
  end
end
