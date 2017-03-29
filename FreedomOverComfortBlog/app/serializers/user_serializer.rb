class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest

  # def images
  #   Refile.attachment_url(object, :images, :fit, 100, 100, format: "jpg")
  # end
end
