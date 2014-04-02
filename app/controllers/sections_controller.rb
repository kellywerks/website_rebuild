class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @sections = Section.all
    @lessons = Lesson.all
    @section = Section.new(:name => params[:name])
    @section.save
    redirect_to("/lessons")
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(:name => params[:name],
                      :number => params[:number],
                      :section_text => params[:section_text])
      render('sections/show.html.erb')
    else
      render('sections/edit.html.erb')
    end
  end

  def delete
    @section = Section.find(params[:id])
    if @section.destroy
      redirect_to("/sections")
    end
  end
end
