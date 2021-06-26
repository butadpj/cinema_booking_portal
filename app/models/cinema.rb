class Cinema < ApplicationRecord
    has_many :movies

    validates :name, presence: true
    validates :available_seats, presence: true
end
