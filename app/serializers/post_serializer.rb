class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content

  belongs_to :author

  has_many :tags, serializer: TagSerializer 

  def short_content
    "#{self.object.content[0..39]}..."
  end 
end 