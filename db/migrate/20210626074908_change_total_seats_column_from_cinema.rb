class ChangeTotalSeatsColumnFromCinema < ActiveRecord::Migration[6.1]
  def change
    remove_column :cinemas, :total_seats, :integer
    add_column :cinemas, :available_seats, :integer
  end
end
