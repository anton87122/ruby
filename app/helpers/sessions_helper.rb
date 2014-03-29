module SessionsHelper
  def sign_in_traveller(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.hash(remember_token))
    self.current_user_traveller = user
  end
  def current_user_traveller=(user)
    @current_user_traveller = user
  end

  def current_user_traveller
    remember_token = User.hash(cookies[:remember_token])
    @current_user_traveller ||= User.find_by(remember_token: remember_token)
  end
  
  def signed_in?
    if current_user_traveller != nil
      return true
    end
    if current_user_agent != nil
      return true
    end
    return false
    #!current_user_traveller.nil?
  end
  
  def sign_out
    if current_user_traveller != nil 
      current_user_traveller.update_attribute(:remember_token,
                                    User.hash(User.new_remember_token))
      cookies.delete(:remember_token)
      self.current_user_traveller = nil
    end
    
    if current_user_agent != nil
      current_user_agent.update_attribute(:remember_token,
                                  Agent.hash(User.new_remember_token))
      cookies.delete(:remember_token)
      self.current_user_traveller = nil
    end
  end
  
  
  def sign_in_agent(user)
    remember_token = Agent.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, Agent.hash(remember_token))
    self.current_user_agent = user
  end
  
  def current_user_agent=(user)
    @current_user_agent = user
  end

  def current_user_agent
    remember_token = Agent.hash(cookies[:remember_token])
    @current_user_agent ||= Agent.find_by(remember_token: remember_token)
  end
  
  def signed_in_agent?
    !current_user_agent.nil?
  end
  
end
