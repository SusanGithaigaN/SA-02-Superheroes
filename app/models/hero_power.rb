class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    # validations
    validates :strength, inclusion: { in: ['Strong','Weak','Average'] }
end
