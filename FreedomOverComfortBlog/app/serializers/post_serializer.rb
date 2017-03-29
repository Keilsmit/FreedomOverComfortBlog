class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :avatar
end
