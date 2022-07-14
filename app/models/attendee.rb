class Attendee < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :talks, through: :attendances
end
