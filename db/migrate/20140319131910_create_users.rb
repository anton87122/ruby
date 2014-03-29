class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
       t.string :name
       t.string :mail
       t.integer :phone
       t.string :country
       t.integer :zipcode
       t.integer :from
       t.integer :to 
       t.integer :fixed_dates
       t.integer :flexible_dates
       t.integer :adults
       t.integer :children
       t.date :departure_date
       t.integer :nights     
       t.integer :lead_type   
       t.integer :travel_type 
       t.integer :budget_type 
       t.integer :budget_from 
       t.integer :budget_to   
       t.integer :flight_class_type
       t.integer :include_flight_budget_type
       t.integer :hotel_star_type     
       t.integer :hotel_board_type   
       t.integer :occasion_type     
       t.integer :activity_type     
       t.integer :flight_expectation_type
       t.integer :lodging_expectation_type
       t.integer :lodging_preference_type  
       t.integer :online_reviews_type     
       t.integer :traveller_profile_type 
       t.string :about_me  
       t.string :additional_comment 
       t.string :remember_token 
       t.string :password_digest

       t.timestamps
    end
  end
end
 