class CabFaresController < ApplicationController
  before_action :set_cab_fare, only: [:show, :edit, :update, :destroy]

  # GET /cab_fares
  # GET /cab_fares.json
  def index
    @cab_fares = CabFare.all
  end

  # GET /cab_fares/1
  # GET /cab_fares/1.json
  def show
  end

  # GET /cab_fares/new
  def new
    @cab_fare = CabFare.new
  end

  # GET /cab_fares/1/edit
  def edit
  end

  # POST /cab_fares
  # POST /cab_fares.json
  def create
    @cab_fare = CabFare.new(cab_fare_params)

    respond_to do |format|
      if @cab_fare.save
        format.html { redirect_to @cab_fare, notice: 'Cab fare and toll was successfully created.' }
        format.json { render :show, status: :created, location: @cab_fare }
      else
        format.html { render :new }
        format.json { render json: @cab_fare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cab_fares/1
  # PATCH/PUT /cab_fares/1.json
  def update
    respond_to do |format|
      if @cab_fare.update(cab_fare_params)
        format.html { redirect_to @cab_fare, notice: 'Cab fare and toll was successfully updated.' }
        format.json { render :show, status: :ok, location: @cab_fare }
      else
        format.html { render :edit }
        format.json { render json: @cab_fare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cab_fares/1
  # DELETE /cab_fares/1.json
  def destroy
    @cab_fare.destroy
    respond_to do |format|
      format.html { redirect_to cab_fares_url, notice: 'Cab fare and toll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cab_fare
      @cab_fare = CabFare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cab_fare_and_toll_params
      params.require(:cab_fare).permit(:occurence, :cost, :description)
    end
end
