class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
<<<<<<< HEAD
    #byebug
  end

  def about
=======
  end

  def about
    @skills = Skill.all
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def contact
  end
<<<<<<< HEAD
=======

  def tech_news
    @tweets = SocialTool.twitter_search
  end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end
