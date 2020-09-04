# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Costume.destroy_all
UserCostume.destroy_all

5.times do
    User.create(name:Faker::FunnyName.two_word_name)
end

5.times do
    Costume.create(title:Faker::TvShows::AquaTeenHungerForce.character ,url:Faker::LoremFlickr.image, description:Faker::Lorem.paragraph_by_chars )
end

5.times do
    UserCostume.create(user_id: User.all.sample.id, costume_id: Costume.all.sample.id)
end