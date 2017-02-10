class Package < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :apartment,
             :counter_cache => true

  belongs_to :user

  # Indirect associations

  # Validations

end
