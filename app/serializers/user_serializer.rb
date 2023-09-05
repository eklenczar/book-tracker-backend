class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :books

  has_many :reviews
  has_many :books
end
