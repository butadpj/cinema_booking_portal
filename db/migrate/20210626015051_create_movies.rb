class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      
      t.belongs_to :cinema
      t.datetime :added_at
      t.timestamps
    end
  end
end
