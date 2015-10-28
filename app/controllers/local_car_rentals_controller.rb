class LocalCarRentalsController < ApplicationController
  before_action :set_local_car_rental, only: [:show, :edit, :update, :destroy]

  # GET /local_car_rentals
  # GET /local_car_rentals.json
  def index
    @local_car_rentals = LocalCarRental.all
  end

  # GET /local_car_rentals/1
  # GET /local_car_rentals/1.json
  def show
  end

  # GET /local_car_rentals/new
  def new
    @local_car_rental = LocalCarRental.new
  end

  # GET /local_car_rentals/1/edit
  def edit
  end

  # POST /local_car_rentals
  # POST /local_car_rentals.json
  def create
    @local_car_rental = LocalCarRental.new(local_car_rental_params)

    respond_to do |format|
      if @local_car_rental.save
        format.html { redirect_to @local_car_rental, notice: 'Local car rental was successfully created.' }
        format.json { render :show, status: :created, location: @local_car_rental }
      else
        format.html { render :new }
        format.json { render json: @local_car_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_car_rentals/1
  # PATCH/PUT /local_car_rentals/1.json
  def update
    respond_to do |format|
      if @local_car_rental.update(local_car_rental_params)
        format.html { redirect_to @local_car_rental, notice: 'Local car rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_car_rental }
      else
        format.html { render :edit }
        format.json { render json: @local_car_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_car_rentals/1
  # DELETE /local_car_rentals/1.json
  def destroy
    @local_car_rental.destroy
    respond_to do |format|
      format.html { redirect_to local_car_rentals_url, notice: 'Local car rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_car_rental
      @local_car_rental = LocalCarRental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_car_rental_params
      params.require(:local_car_rental).permit(:occurence, :cost, :description)
    end
end
