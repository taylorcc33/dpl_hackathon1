class Trip < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :locations, dependent: :destroy
=======
  has_many :locations , dependent: :delete_all
>>>>>>> 2217d603f7ff030f6ed07d458a5fae7a73f7d126
end
