class Answer < ApplicationRecord
  belongs_to :user, optional: true, dependent: :destroy
  belongs_to :ank, dependent: :destroy
  
end
