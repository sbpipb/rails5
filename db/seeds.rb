# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
    Blog.create!(
        title: "Blog Post #{blog}",
        body: "Lorem lorem lorem lorem"
    )



end


puts "10 blog posts created"

5.times do |skills|
    Skill.create!(
    title: "Rails #{skills}",
    percent_utilized: 15

    )
end 




9.times do |portofolio|
    Portofolio.create!(
        title: "Portofolio title: #{portofolio}",
        subtitle: "My great service",
        body: "did everything they wanted me to do... ",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )
end
