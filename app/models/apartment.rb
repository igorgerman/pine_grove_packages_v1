class Apartment < ApplicationRecord
  # Direct associations

  belongs_to :building,
             :counter_cache => true

  has_many   :packages,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
