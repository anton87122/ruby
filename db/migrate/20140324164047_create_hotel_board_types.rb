class CreateHotelBoardTypes < ActiveRecord::Migration
  def change
    create_table :hotel_board_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
