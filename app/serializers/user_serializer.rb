class UserSerializer < ActiveModel::Serializer
  attributes :name, :contact
  has_many :dogs 
end
