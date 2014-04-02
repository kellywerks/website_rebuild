require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :lesson_text }

  it { should belong_to :section }

  describe 'next' do
    it "finds the lesson with the next number" do
      lesson5 = Lesson.create(:name => "what", :number => 5, :lesson_text => "what")
      lesson9 = Lesson.create(:name => "what", :number => 9, :lesson_text => "what")
      lesson6 = Lesson.create(:name => "what", :number => 6, :lesson_text => "what")
      lesson5.next.should eq lesson6
    end

  end

    describe 'previous' do
    it "finds the lesson with the next number" do
      lesson9 = Lesson.create(:name => "what", :number => 9, :lesson_text => "what")
      lesson5 = Lesson.create(:name => "what", :number => 5, :lesson_text => "what")
      lesson6 = Lesson.create(:name => "what", :number => 6, :lesson_text => "what")
      lesson1 = Lesson.create(:name => "what", :number => 1, :lesson_text => "what")
      lesson9.previous.should eq lesson6
    end
  end
end
