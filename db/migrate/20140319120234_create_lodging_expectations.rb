class CreateLodgingExpectations < ActiveRecord::Migration
  def change
    create_table :lodging_expectations do |t|
      t.string :name

      t.timestamps
    end
  end
end
