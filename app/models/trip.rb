class Trip < ApplicationRecord
  belongs_to :user
  has_many :locations , dependent: :delete_all
end
