# class PostSerializer < ActiveModel::Serializer
#   attributes :title, :content, :short_content

#   belongs_to :author

#   has_many :tags, through: :post_tags, serializer: TagSerializer 

#   def short_content
#     "#{self.object.content[0..39]}..."
#   end 
# end 

class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  has_many :tags
  belongs_to :author
end