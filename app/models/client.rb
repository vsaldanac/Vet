class Client < ApplicationRecord
    has_many :pets

    def count_pets
        pets.count
    end
end
