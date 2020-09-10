class User < ApplicationRecord
    has_many :user_costumes
    has_many :costumes, through: :user_costumes

end
