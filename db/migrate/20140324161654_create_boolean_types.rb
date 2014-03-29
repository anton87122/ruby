class CreateBooleanTypes < ActiveRecord::Migration
  def change
    create_table :boolean_types do |t|
      t.string :string
      t.string :name

      t.timestamps
    end
  end
end
