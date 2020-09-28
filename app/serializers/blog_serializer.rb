class BlogSerializer < ActiveModel::Serializer
  attributes :id, :cover_image, :title, :story, :likes
  has_many :comments
  has_one :user
end
