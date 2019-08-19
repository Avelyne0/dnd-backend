class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :characters
end