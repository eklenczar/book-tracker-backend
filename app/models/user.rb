class User < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews

    validates :name, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true

    has_secure_password
end
