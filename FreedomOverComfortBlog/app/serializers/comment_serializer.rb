class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :body
end
