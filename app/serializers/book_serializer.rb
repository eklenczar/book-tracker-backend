class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :genre, :image, :description
  
  has_many :reviews
end
