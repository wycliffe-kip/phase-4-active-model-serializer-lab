# class AuthorSerializer < ActiveModel::Serializer
#   attributes :name

#   has_one :profile, serializer: ProfileSerializer

#   has_many :posts, serializer: PostSerializer
# end

class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :posts, serializer: PostShortContentSerializer
end 