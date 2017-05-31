class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    #byebug
  end

  def about
  end

  def contact
  end
end
