class CostumeSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :description
  has_many :user_costumes
  has_many :users, through: :user_costumes

end
