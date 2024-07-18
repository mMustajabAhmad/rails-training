class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patient, through: :appointments
end
