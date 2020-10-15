class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :username, :display_photo
end
