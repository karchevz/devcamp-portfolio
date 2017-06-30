<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create(
        title: "Topic #{topic}"
    )
end

puts "3 topics created"


10.times do |blog|
  Blog.create!(
    title: "My Blog #{blog}", 
    body: "Lorem ipsum dolor sit amet, velit sociis diam enim, quis accumsan dolor nibh natoque volutpat, proin arcu purus ullamcorper, ad consequat vivamus aliquam. Ipsum feugiat dolor hymenaeos, nec integer elit mauris, sit quam nulla iaculis, vestibulum porta libero quam, congue lorem nunc. Blandit id, ipsum consectetuer in veniam ante. Dictumst habitasse mi vitae at ut per, orci vitae porttitor mollis, justo odio quis, orci massa justo. Sed sem vestibulum ut donec etiam arcu, vel eu ligula ullamcorper sociis urna, et ac blandit id, metus posuere justo libero ut aliquam. Arcu bibendum leo sem. Rutrum quam rhoncus dapibus lacus sem. Pellentesque egestas mollis eu, placerat eget dolore. Cursus et nec wisi, vitae et varius praesent in dui. Lacus cras eget, amet elit nunc a euismod. Minus nec et suscipit rhoncus in, et elit ante, pretium ipsum enim, proin non scelerisque quis class orci. Varius ultricies, in turpis praesent mauris at.",
    topic_id: Topic.last.id
    )
=======
User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    topic_id: Topic.last.id
  )
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
<<<<<<< HEAD
    title: "Rails #{skill}", 
    skil_utilized: 15
    )
=======
    title: "Rails #{skill}",
    percent_utilized: 15
  )
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
<<<<<<< HEAD
    title: "Portfolio Item #{portfolio_item}", 
    subtitle: "Ruby on Rails",
    body: "unc in vel condimentum, nibh congue in suspendisse in, risus vulputate vivamus venenatis, scelerisque sociis iaculis ipsum lectus a, dignissim eu odio nunc metus. Morbi vivamus leo nunc amet turpis torquent, sapien consequat lacus ante dolor leo etiam. Sem lorem ultricies pharetra sapien, suspendisse morbi quam eleifend eros, ad sed suspendisse, enim nulla faucibus consectetuer eget duis. Sed eleifend, nulla sodales aenean, mollis quis quis eleifend, proin vel feugiat. Justo tellus arcu nascetur, egestas tristique integer, non libero non morbi, mi turpis ac sed malesuada morbi, neque arcu maecenas erat. Ut vel non interdum. Tristique felis justo hendrerit convallis mollis porttitor, suspendisse nullam nonummy mauris fringilla. Praesent vulputate, ultricies varius lacus scelerisque sapien non nullam, nulla porttitor ipsum enim id nostra maecenas, amet ornare. Feugiat mi, tellus justo sed dui, sem purus morbi, elit morbi velit magna suspendisse mattis. Luctus consectetuer facilisis, elit auctor in sed sed, nulla fusce diam cras sem eros. Purus odio velit, condimentum massa pede euismod qui, in dictum molestie. Eleifend suspendisse, quam et condimentum vestibulum scelerisque, at consequat at leo accumsan a taciti, vestibulum viverra.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
=======
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end

1.times do |portfolio_item|
  Portfolio.create!(
<<<<<<< HEAD
    title: "Portfolio Item #{portfolio_item}", 
    subtitle: "Angular",
    body: "unc in vel condimentum, nibh congue in suspendisse in, risus vulputate vivamus venenatis, scelerisque sociis iaculis ipsum lectus a, dignissim eu odio nunc metus. Morbi vivamus leo nunc amet turpis torquent, sapien consequat lacus ante dolor leo etiam. Sem lorem ultricies pharetra sapien, suspendisse morbi quam eleifend eros, ad sed suspendisse, enim nulla faucibus consectetuer eget duis. Sed eleifend, nulla sodales aenean, mollis quis quis eleifend, proin vel feugiat. Justo tellus arcu nascetur, egestas tristique integer, non libero non morbi, mi turpis ac sed malesuada morbi, neque arcu maecenas erat. Ut vel non interdum. Tristique felis justo hendrerit convallis mollis porttitor, suspendisse nullam nonummy mauris fringilla. Praesent vulputate, ultricies varius lacus scelerisque sapien non nullam, nulla porttitor ipsum enim id nostra maecenas, amet ornare. Feugiat mi, tellus justo sed dui, sem purus morbi, elit morbi velit magna suspendisse mattis. Luctus consectetuer facilisis, elit auctor in sed sed, nulla fusce diam cras sem eros. Purus odio velit, condimentum massa pede euismod qui, in dictum molestie. Eleifend suspendisse, quam et condimentum vestibulum scelerisque, at consequat at leo accumsan a taciti, vestibulum viverra.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end


puts "9 portfolio items created"

3.times do |technology|
    Technology.create!(
        name: "Technology #{technology}",
        portfolio_id: Portfolio.last.id
        )
end

puts "3 technology items created"
=======
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
