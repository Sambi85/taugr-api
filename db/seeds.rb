
require 'faker'
require 'pexels'

User.destroy_all
Costume.destroy_all
UserCostume.destroy_all

# client = Pexels::Client.new("API GOES HERE")

# client.photos.search('Halloween', per_page: 1).photos do |photo|
#     Costume.create(title:Faker::TvShows::AquaTeenHungerForce.character, url: photo, description:Faker::Lorem.paragraph_by_chars)
# end





5.times do
    User.create(name:Faker::FunnyName.two_word_name)
end

5.times do
    Costume.create(title:Faker::TvShows::AquaTeenHungerForce.character ,url:Faker::LoremFlickr.image, description:Faker::Lorem.paragraph_by_chars )
end

5.times do
    UserCostume.create(user_id: User.all.sample.id, costume_id: Costume.all.sample.id)
end