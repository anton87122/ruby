class CreateHotelStars < ActiveRecord::Migration
  def change
    create_table :hotel_stars do |t|
      t.string :name

      t.timestamps
    end
  end
end
