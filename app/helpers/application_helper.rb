module ApplicationHelper
<<<<<<< HEAD
  # Below is an example of a helper method
  def sample_helper
    content_tag(:div, "My contnent", class: "my-class")
  end

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: style) + 
      " ".html_safe +
      (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style      
    end 
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end 

  def copyright_generator
    @copyright = ZoroDevcampViewTool::Renderer.copyright 'Gogo Mogo', 'All rights reserved'
=======
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', contact_path } if you'd like to work together."
      content_tag(:div, greeting.html_safe, class: styles)
    end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Jordan Hudgens', 'All rights reserved'
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
<<<<<<< HEAD
        url: about_path,
=======
        url: about_me_path,
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
<<<<<<< HEAD
      }


    ]

  end

  def nav_helper style, tag_type
    nav_links = ""
=======
      },
      {
        url: tech_news_path,
        title: 'Tech News'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
<<<<<<< HEAD
    nav_links.html_safe

  end





    # below is the old implementation
# nav_links = <<NAV
# <#{tag_type}><a href="#{root_path}" class="#{style} #{active? root_path}">Home</a></#{tag_type}>
# <#{tag_type}><a href="#{about_path}" class="#{style} #{active? about_path}">About</a></#{tag_type}>
# <#{tag_type}><a href="#{contact_path}" class="#{style} #{active? contact_path}">Contact</a></#{tag_type}>
# <#{tag_type}><a href="#{blogs_path}" class="#{style} #{active? blogs_path}">Blog</a></#{tag_type}>
# <#{tag_type}><a href="#{portfolios_path}" class="#{style} #{active? portfolios_path}">Portfolio</a></#{tag_type}>
# NAV
#   nav_links.html_safe

  

  def active? path
    "active" if current_page? path
  end

end
=======

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Jordan Hudgens Portfolio", sticky: false)
  end

end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
