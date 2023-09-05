class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    validates :title, presence: true, uniqueness: true
    validates :author, presence: true
    validates :genre, presence: true
    validates :image, presence: true
    validates :description, presence: true

end
