class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :user, :user_name, :book_id

  belongs_to :book
  belongs_to :user
end
