class Costume < ApplicationRecord
    has_many :user_costumes
    has_many :users, through: :user_costumes
end
