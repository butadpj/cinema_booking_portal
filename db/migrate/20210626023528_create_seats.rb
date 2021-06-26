class CreateSeats < ActiveRecord::Migration[6.1]
  def change
    create_table :seats do |t|
      t.string :seat_number
      t.boolean :is_available, default: true
      
      t.belongs_to :cinema
      t.timestamps
    end
  end
end
