class CreateLodgingPreferences < ActiveRecord::Migration
  def change
    create_table :lodging_preferences do |t|
      t.string :name

      t.timestamps
    end
  end
end
