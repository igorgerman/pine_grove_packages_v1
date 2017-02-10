class Apartment < ApplicationRecord
  # Direct associations

  has_many   :packages,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
