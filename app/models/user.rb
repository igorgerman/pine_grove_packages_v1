class User < ApplicationRecord
  # Direct associations

  has_many   :packages,
             :dependent => :destroy

  # Indirect associations

  has_many   :apartments,
             :through => :packages,
             :source => :apartment

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
