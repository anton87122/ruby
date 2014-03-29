class CreateTravellerProfiles < ActiveRecord::Migration
  def change
    create_table :traveller_profiles do |t|
      t.string :name

      t.timestamps
    end
  end
end
