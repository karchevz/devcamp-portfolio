module DefaultPageContent
  extend ActiveSupport::Concern

  included do
<<<<<<< HEAD
    before_action :set_title
  end

  def set_title
    @page_title = "Devcamp Portfolio | My Portfolio Website"
    @seo_keywords = "Jordan Hudgens Portfolio"
  end 

=======
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Devcamp Portfolio | My Portfolio Website"
    @seo_keywords = "Jordan Hudgens portfolio"
  end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end