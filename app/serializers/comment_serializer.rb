class CommentSerializer < ActiveModel::Serializer
  attributes :id, :statement, :likes, :user_id, :name
  # has_one :user
  # has_one :blog
end
