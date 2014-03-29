class User < ActiveRecord::Base
  
  #before_save { self.mail = mail.downcase }
  #validates :name, presence: true, length: { maximum: 50 }
  #validates :zipcode, numericality: true
  #validates :phone, numericality: true
  #validate :departure_date, numericality: true
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :mail, presence:   true,
   #                format:     { with: VALID_EMAIL_REGEX },
  #                  uniqueness: { case_sensitive: false }
  has_secure_password
  #attr_accessible :name, :mail, :phone, :country, :zipcode, :password, :password_confirmation
  #validates :password, length: { minimum: 6 }
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  def departure_date_cannot_be_in_the_past
    errors.add(:departure_date, "can't be in the past") if
      !departure_date.blank? and departure_date < Date.today
  end
  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end
