class Talk < ApplicationRecord
  belongs_to :speaker
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances
end
