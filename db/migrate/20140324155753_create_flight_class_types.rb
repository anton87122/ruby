class CreateFlightClassTypes < ActiveRecord::Migration
  def change
    create_table :flight_class_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
