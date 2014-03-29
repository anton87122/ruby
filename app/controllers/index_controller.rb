class IndexController < ApplicationController
  def index
  end
  
  def dashboard
    render "users/dashboard"
  end
end
