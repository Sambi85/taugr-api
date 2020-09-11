require 'byebug'
require 'faker'
require 'pexels'

Costume.destroy_all


client = Pexels::Client.new(ENV['PEXELS_API_KEY'])

client.photos.search('Halloween Costume', per_page: 25).photos.each do |photo|
    costume = Costume.create(title:Faker::Quotes::Shakespeare.hamlet_quote, url: photo.src.values[2], description: "Photographer: #{photo.user.name}")
end
# Lets test if photo.src can return something with photo.src.original. We need it to be a single string not a weird funky hash of strings




5.times do
    User.create(name:Faker::FunnyName.two_word_name)
end

5.times do
    UserCostume.create(user_id: User.all.sample.id, costume_id: Costume.all.sample.id)
end