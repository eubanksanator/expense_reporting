class CabFareAndTollsController < ApplicationController
  before_action :set_cab_fare_and_toll, only: [:show, :edit, :update, :destroy]

  # GET /cab_fare_and_tolls
  # GET /cab_fare_and_tolls.json
  def index
    @cab_fare_and_tolls = CabFareAndToll.all
  end

  # GET /cab_fare_and_tolls/1
  # GET /cab_fare_and_tolls/1.json
  def show
  end

  # GET /cab_fare_and_tolls/new
  def new
    @cab_fare_and_toll = CabFareAndToll.new
  end

  # GET /cab_fare_and_tolls/1/edit
  def edit
  end

  # POST /cab_fare_and_tolls
  # POST /cab_fare_and_tolls.json
  def create
    @cab_fare_and_toll = CabFareAndToll.new(cab_fare_and_toll_params)

    respond_to do |format|
      if @cab_fare_and_toll.save
        format.html { redirect_to @cab_fare_and_toll, notice: 'Cab fare and toll was successfully created.' }
        format.json { render :show, status: :created, location: @cab_fare_and_toll }
      else
        format.html { render :new }
        format.json { render json: @cab_fare_and_toll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cab_fare_and_tolls/1
  # PATCH/PUT /cab_fare_and_tolls/1.json
  def update
    respond_to do |format|
      if @cab_fare_and_toll.update(cab_fare_and_toll_params)
        format.html { redirect_to @cab_fare_and_toll, notice: 'Cab fare and toll was successfully updated.' }
        format.json { render :show, status: :ok, location: @cab_fare_and_toll }
      else
        format.html { render :edit }
        format.json { render json: @cab_fare_and_toll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cab_fare_and_tolls/1
  # DELETE /cab_fare_and_tolls/1.json
  def destroy
    @cab_fare_and_toll.destroy
    respond_to do |format|
      format.html { redirect_to cab_fare_and_tolls_url, notice: 'Cab fare and toll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cab_fare_and_toll
      @cab_fare_and_toll = CabFareAndToll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cab_fare_and_toll_params
      params.require(:cab_fare_and_toll).permit(:occurence, :cost, :description)
    end
end
