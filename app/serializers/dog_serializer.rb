class DogSerializer < ActiveModel::Serializer
  attributes :id, :breed, :image, :likes, :price
end
