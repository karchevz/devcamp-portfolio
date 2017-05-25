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
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}", 
    skil_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Item #{portfolio_item}", 
    subtitle: "Ruby on Rails",
    body: "unc in vel condimentum, nibh congue in suspendisse in, risus vulputate vivamus venenatis, scelerisque sociis iaculis ipsum lectus a, dignissim eu odio nunc metus. Morbi vivamus leo nunc amet turpis torquent, sapien consequat lacus ante dolor leo etiam. Sem lorem ultricies pharetra sapien, suspendisse morbi quam eleifend eros, ad sed suspendisse, enim nulla faucibus consectetuer eget duis. Sed eleifend, nulla sodales aenean, mollis quis quis eleifend, proin vel feugiat. Justo tellus arcu nascetur, egestas tristique integer, non libero non morbi, mi turpis ac sed malesuada morbi, neque arcu maecenas erat. Ut vel non interdum. Tristique felis justo hendrerit convallis mollis porttitor, suspendisse nullam nonummy mauris fringilla. Praesent vulputate, ultricies varius lacus scelerisque sapien non nullam, nulla porttitor ipsum enim id nostra maecenas, amet ornare. Feugiat mi, tellus justo sed dui, sem purus morbi, elit morbi velit magna suspendisse mattis. Luctus consectetuer facilisis, elit auctor in sed sed, nulla fusce diam cras sem eros. Purus odio velit, condimentum massa pede euismod qui, in dictum molestie. Eleifend suspendisse, quam et condimentum vestibulum scelerisque, at consequat at leo accumsan a taciti, vestibulum viverra.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Item #{portfolio_item}", 
    subtitle: "Angular",
    body: "unc in vel condimentum, nibh congue in suspendisse in, risus vulputate vivamus venenatis, scelerisque sociis iaculis ipsum lectus a, dignissim eu odio nunc metus. Morbi vivamus leo nunc amet turpis torquent, sapien consequat lacus ante dolor leo etiam. Sem lorem ultricies pharetra sapien, suspendisse morbi quam eleifend eros, ad sed suspendisse, enim nulla faucibus consectetuer eget duis. Sed eleifend, nulla sodales aenean, mollis quis quis eleifend, proin vel feugiat. Justo tellus arcu nascetur, egestas tristique integer, non libero non morbi, mi turpis ac sed malesuada morbi, neque arcu maecenas erat. Ut vel non interdum. Tristique felis justo hendrerit convallis mollis porttitor, suspendisse nullam nonummy mauris fringilla. Praesent vulputate, ultricies varius lacus scelerisque sapien non nullam, nulla porttitor ipsum enim id nostra maecenas, amet ornare. Feugiat mi, tellus justo sed dui, sem purus morbi, elit morbi velit magna suspendisse mattis. Luctus consectetuer facilisis, elit auctor in sed sed, nulla fusce diam cras sem eros. Purus odio velit, condimentum massa pede euismod qui, in dictum molestie. Eleifend suspendisse, quam et condimentum vestibulum scelerisque, at consequat at leo accumsan a taciti, vestibulum viverra.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end


puts "9 portfolio items created"