class CreateFlightExpectations < ActiveRecord::Migration
  def change
    create_table :flight_expectations do |t|
      t.string :name

      t.timestamps
    end
  end
end
