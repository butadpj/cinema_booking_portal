class CreateReservedMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :reserved_movies do |t|

      t.belongs_to :cinema
      t.belongs_to :user

      t.timestamps
    end
  end
end
