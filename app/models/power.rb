class Power < ApplicationRecord
    has_many :hero_powers
    has_many :heroes, through: :hero_powers

    # validations
    validates :description, presence: true, length: { minimum:20 }
end
