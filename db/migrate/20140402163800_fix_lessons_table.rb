class FixLessonsTable < ActiveRecord::Migration
  def change
    remove_column :lessons, :lesson_text
    add_column :lessons, :lesson_text, :text
  end
end
