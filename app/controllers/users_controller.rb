class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(current_user_traveller.id)
  end
  
  def step1
    @user = User.new(user_params)
    logger.info "Processing the request..."
    if @user.save
      sign_in_traveller @user
      flash[:success] = "Welcome to the Sample App!"
      @area = Area.all
      @country = Country.all
      render "step1"
    else    
      render "contact"
    end
  end
  
  def step2
    @budget_type = BudgetType.all
    @user = current_user_traveller
    @user.update_attributes(user_params)
  end
  
  def step3
    @flight_class_type = FlightClassType.all
    @include_flight_budget_type = BooleanType.all
    @hotel_star_type = HotelStar.all
    @hotel_board_type = HotelBoardType.all
    @user = current_user_traveller
    @user.update_attributes(user_params)
  end
  
  def step4
    @user = current_user_traveller
    @occasion_type = Occasions.all
    @activity_type = Activities.all
    @user.update_attributes(user_params)
  end
  
  def step_update
    @user = current_user_traveller
    if !@user.update_attributes(user_params)
     render "contact"
    end
  end
  def dashboard
    @user = User.find(current_user_traveller.id)
  end
  # GET /users/new
  def new
    @user = User.new
    @area = Area.all
    @country = Country.all
    @lead_type = LeadType.all
    @travel_type = TravelType.all
  end
  
  def contact
    @user = User.new
  end

  
  def next
    
  end
  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    logger.info "Processing the request..."
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @user = User.new
      @area = Area.all
      @country = Country.all
      @lead_type = LeadType.all
      @travel_type = TravelType.all
      render 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :mail, :phone, :country, :zipcode, :password, :password_confirmation, :from, :to, :fixed_dates, :flexible_dates, :adults, :children, :departure_date, :nights, :lead_type, :travel_type, :budget_type, :budget_from, :budget_to, :flight_class_type, :flight_expectation_type, :include_flight_budget_type, :hotel_star_type, :hotel_board_type, :occasion_type, :activity_type, :lodging_expectation_type, :lodging_preference_type, :online_reviews_type, :traveller_profile_type, :about_me, :additional_comment, :remember_token, :password_digest)
    end
end
