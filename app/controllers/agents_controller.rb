class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  # GET /agents
  # GET /agents.json
  def index
    @agents = Agent.all
  end
  
  def contact
    @agent = Agent.new;  
  end
  def show
    @agent = Agent.find(current_user_agent.id)
  end  
  def step1
    @agent = Agent.new(user_params)
    logger.info "Processing the request..."
    if @agent.save
      sign_in_agent @agent
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
    @agent = current_user_agent
    @agent.update_attributes(user_params)
  end
  def step3
    @flight_class_type = FlightClassType.all
    @include_budget_airlines_type = BooleanType.all
    @hotel_star_type = HotelStar.all
    @hotel_board_type = HotelBoardType.all
    @agent = current_user_agent
    @agent.update_attributes(user_params)
  end
  def step4
    @agent = current_user_agent
    @occasion_type = Occasions.all
    @activity_type = Activities.all
    @agent.update_attributes(user_params)
  end
  
  def step_update
    @agent = current_user_agent
    if !@agent.update_attributes(user_params)
     render "contact"
    end
  end

  def dashboard
    @agent = Agent.find(current_user_agent.id)
  end        
  # GET /agents/1
  # GET /agents/1.json
  def show
  end

  # GET /agents/new
  def new
    @agent = Agent.new
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  # POST /agents.json
  def create
    @agent = Agent.new(agent_params)

    respond_to do |format|
      if @agent.save
        format.html { redirect_to @agent, notice: 'Agent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @agent }
      else
        format.html { render action: 'new' }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agents/1
  # PATCH/PUT /agents/1.json
  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to @agent, notice: 'Agent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agents/1
  # DELETE /agents/1.json
  def destroy
    @agent.destroy
    respond_to do |format|
      format.html { redirect_to agents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_params
      params.require(:agent).permit(:name, :email)
    end
        # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:agent).permit(:name, :company_name, :email, :phone, :address, :registration, :password, :password_confirmation, :from, :to, :departure_date, :nights, :adults, :children, :departure_date_type, :travel_type, :budget_type, :budget_limit, :budget_from, :budget_to, :flight_class_type, :include_budget_airlines_budget_type, :hotel_star_type, :hotel_board_type, :occasion_type, :activity_type, :about_me, :additional_comment, :remember_token, :password_digest)
    end
end
