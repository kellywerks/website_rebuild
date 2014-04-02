class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @lessons = Lesson.all
    @lesson = Lesson.new(:name => params[:name],
                         :number => params[:number],
                         :lesson_text => params[:text],
                         :section_id => params[:section_id])

    if @lesson.save
      render('lessons/index.html.erb')
    else
      render('lessons/new.html.erb')
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(:name => params[:name],
                      :number => params[:number],
                      :lesson_text => params[:lesson_text])
      render('lessons/show.html.erb')
    else
      render('lessons/edit.html.erb')
    end
  end

  def delete
    @lesson = Lesson.find(params[:id])
    if @lesson.destroy
      redirect_to("/lessons")
    end
  end
end
