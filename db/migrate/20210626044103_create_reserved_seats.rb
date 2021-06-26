class CreateReservedSeats < ActiveRecord::Migration[6.1]
  def change
    create_table :reserved_seats do |t|

      t.string :time_slot

      t.belongs_to :user
      t.belongs_to :seat
      t.belongs_to :cinema

      t.timestamps
    end
  end
end
