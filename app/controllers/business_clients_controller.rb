class BusinessClientsController < ApplicationController
  before_action :set_business_client, only: [:show, :edit, :update, :destroy]

  # GET /business_clients
  # GET /business_clients.json
  def index
    @business_clients = BusinessClient.all
  end

  # GET /business_clients/1
  # GET /business_clients/1.json
  def show
  end

  # GET /business_clients/new
  def new
    @business_client = BusinessClient.new
  end

  # GET /business_clients/1/edit
  def edit
  end

  # POST /business_clients
  # POST /business_clients.json
  def create
    @business_client = BusinessClient.new(business_client_params)

    respond_to do |format|
      if @business_client.save
        format.html { redirect_to @business_client, notice: 'Business client was successfully created.' }
        format.json { render :show, status: :created, location: @business_client }
      else
        format.html { render :new }
        format.json { render json: @business_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_clients/1
  # PATCH/PUT /business_clients/1.json
  def update
    respond_to do |format|
      if @business_client.update(business_client_params)
        format.html { redirect_to @business_client, notice: 'Business client was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_client }
      else
        format.html { render :edit }
        format.json { render json: @business_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_clients/1
  # DELETE /business_clients/1.json
  def destroy
    @business_client.destroy
    respond_to do |format|
      format.html { redirect_to business_clients_url, notice: 'Business client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_client
      @business_client = BusinessClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_client_params
      params.require(:business_client).permit(:occurence, :meals, :enter)
    end
end
