class Review < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user
  belongs_to :book

  def user_name
    self.user.name
  end
end
