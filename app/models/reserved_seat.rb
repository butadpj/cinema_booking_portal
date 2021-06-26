class ReservedSeat < ApplicationRecord
    belongs_to :seat
    belongs_to :customer
    belongs_to :cinema
end
