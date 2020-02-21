class Pet < ApplicationRecord
    has_many :pethistories
    belongs_to :client

    def pet_visits
        pethistories.count
    end

    def pet_weight
        pethistories.pluck(:weight)[0]
    end

    def pet_height
        pethistories.pluck(:height)[0]
    end

    def average_weight
        pethistories.average(:weight)
    end

    def average_height
        pethistories.average(:height)
    end

    def max_weight
        pethistories.pluck(:weight).max
    end

    def max_height
        pethistories.pluck(:height).max
    end

end
