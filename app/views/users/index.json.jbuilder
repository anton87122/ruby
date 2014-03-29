json.array!(@users) do |user|
  json.extract! user, :id, :name, :mail, :password, :from, :to, :fixed_dates, :flexible_dates, :adults, :children, :departure_date, :nights, :lead_type, :travel_type, :budget_type, :flight_expectaion_type, :lodging_expectation_type, :lodging_preference_type, :online_reviews_type, :traveller_profile_type
  json.url user_url(user, format: :json)
end
