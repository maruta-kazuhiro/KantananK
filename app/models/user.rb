class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :anks, dependent: :destroy
  has_many :answers, dependent: :destroy


  validates :nickname, presence: true
  validates :password, length: { minimum: 6, message: 'is invalid. Minimum 6.' }, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/, message: 'is invalid. Use half-width alphanumeric both.' }
  
end
