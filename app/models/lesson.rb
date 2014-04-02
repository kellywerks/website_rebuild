class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, :presence => true
  validates :number, :presence => true
  validates :lesson_text, :presence => true

  def next
    next_number = Lesson.order(:number).where("number > ?", self.number).first
    if next_number == nil
      self
    else
      next_number
    end
  end

  def previous
    previous_number = Lesson.order(number: :desc).where("number < ?", self.number).first
    if previous_number == nil
      self
    else
      previous_number
    end
  end
end
