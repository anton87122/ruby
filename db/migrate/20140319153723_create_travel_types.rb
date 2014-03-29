class CreateTravelTypes < ActiveRecord::Migration
  def change
    create_table :travel_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
