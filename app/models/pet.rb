class Pet < ApplicationRecord
  has_many :appointments
  # Through means that an appoinment for this animal exists
  has_many :doctors, through: :appointments
end
