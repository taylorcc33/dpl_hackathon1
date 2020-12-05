class Trip < ApplicationRecord
  belongs_to :user
  has_many :locations
  has_many :reviews
end
