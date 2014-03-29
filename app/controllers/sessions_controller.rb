class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(mail: params[:session][:mail].downcase)
    @agent = Agent.find_by(email: params[:session][:mail].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in_traveller @user
      redirect_to :action => "dashboard", :controller=>"users"
    elsif @agent && @agent.authenticate(params[:session][:password])
      sign_in_agent @agent
      redirect_to :action => "dashboard", :controller=>"agents"
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
  
  def dashboard
    if current_user_agent != nil
      redirect_to :action => "dashboard", :controller=>"agents"
    end
    
    if current_user_traveller != nil
      redirect_to :action => "dashboard", :controller=>"users"
    end
    
  end
  def destroy
    sign_out
    redirect_to root_url
  end
end
