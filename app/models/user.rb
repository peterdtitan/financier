class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    has_many :categories, foreign_key: :author_id
    has_many :payments, foreign_key: :author_id
  
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
  end
