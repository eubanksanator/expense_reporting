class TravelCostsController < ApplicationController
  before_action :set_travel_cost, only: [:show, :edit, :update, :destroy]

  # GET /travel_costs
  # GET /travel_costs.json
  def index
    @travel_costs = TravelCost.all
  end

  # GET /travel_costs/1
  # GET /travel_costs/1.json
  def show
  end

  # GET /travel_costs/new
  def new
    @travel_cost = TravelCost.new
  end

  # GET /travel_costs/1/edit
  def edit
  end

  # POST /travel_costs
  # POST /travel_costs.json
  def create
    @travel_cost = TravelCost.new(travel_cost_params)

    respond_to do |format|
      if @travel_cost.save
        format.html { redirect_to @travel_cost, notice: 'Travel cost was successfully created.' }
        format.json { render :show, status: :created, location: @travel_cost }
      else
        format.html { render :new }
        format.json { render json: @travel_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_costs/1
  # PATCH/PUT /travel_costs/1.json
  def update
    respond_to do |format|
      if @travel_cost.update(travel_cost_params)
        format.html { redirect_to @travel_cost, notice: 'Travel cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_cost }
      else
        format.html { render :edit }
        format.json { render json: @travel_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_costs/1
  # DELETE /travel_costs/1.json
  def destroy
    @travel_cost.destroy
    respond_to do |format|
      format.html { redirect_to travel_costs_url, notice: 'Travel cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_cost
      @travel_cost = TravelCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_cost_params
      params.require(:travel_cost).permit(:occurence, :cost, :description)
    end
end
