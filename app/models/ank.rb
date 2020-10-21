class Ank < ApplicationRecord
  has_one_attached :image
  belongs_to :user, optional: true, dependent: :destroy
  has_many :answers, dependent: :destroy

  with_options presence: true do
    validates :question
    validates :answer1
    validates :answer2
    validates :answer3
  end
  
end
