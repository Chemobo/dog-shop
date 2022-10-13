class DogSerializer < ActiveModel::Serializer
  attributes :breed, :image, :likes, :price
  belongs_to :user
end
