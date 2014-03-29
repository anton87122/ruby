class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
       t.string :name
       t.string :company_name
       t.string :email
       t.integer :phone
       t.string :address
       t.date :registration
       t.integer :from     
       t.integer :to
       t.date :departure_date
       t.integer :nights
       t.integer :departure_date_type
       t.integer :adults
       t.integer :children
       t.integer :travel_type
       t.integer :budget_type
       t.integer :budget_limit
       t.integer :budget_from
       t.integer :budget_to
       t.integer :flight_class_type
       t.integer :include_budget_airlines_type
       t.integer :hotel_star_type
       t.integer :hotel_board_type
       t.integer :occasion_type
       t.integer :activity_type
       t.string :about_me
       t.string :additional_comment
       t.string :password_digest
       t.string :remember_token

      t.timestamps
    end
  end
end

