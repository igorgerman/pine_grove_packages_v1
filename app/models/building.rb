class Building < ApplicationRecord
  # Direct associations

  has_many   :apartments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
