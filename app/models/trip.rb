class Trip < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :locations , dependent: :destroy 
end
