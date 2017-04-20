class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :image, :author
end
