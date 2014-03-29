class Agent < ActiveRecord::Base
  has_secure_password
  def Agent.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Agent.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  def departure_date_cannot_be_in_the_past
    errors.add(:departure_date, "can't be in the past") if
      !departure_date.blank? and departure_date < Date.today
  end
  private

    def create_remember_token
      self.remember_token = Agent.hash(User.new_remember_token)
    end
end
