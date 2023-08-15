class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :user, :user_name

  belongs_to :book
  belongs_to :user
end
