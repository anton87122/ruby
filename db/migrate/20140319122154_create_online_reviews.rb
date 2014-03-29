class CreateOnlineReviews < ActiveRecord::Migration
  def change
    create_table :online_reviews do |t|
      t.string :name

      t.timestamps
    end
  end
end
