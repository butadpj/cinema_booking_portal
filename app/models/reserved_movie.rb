class ReservedMovie < ApplicationRecord
    belongs_to :user
    belongs_to :cinema
end
