class Movie < ApplicationRecord
    belongs_to :cinema

    has_one_attached :thumbnail

    validates :title, presence: true
    validates :description, presence: true
    validates :cinema_id, presence: true
end
