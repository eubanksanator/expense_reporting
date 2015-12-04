class ReceiptsController < ApplicationController

  def index
    @receipt = Receipt.all
  end

  def show
  end

  def new
    @receipt = Receipt.new
  end

  def edit
  end

  def create
    @receipt = Receipt.new(receipt_params)

    respond_to do |format|
      if @receipt.save
        format.html { redirect_to @receipt, notice: 'Receipt was successfully created.' }
        format.json { render :show, status: :created, location: @receipt }
      else
        format.html { render :new }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @receipt.update(receipt_params)
        format.html { redirect_to @receipt, notice: 'Receipt was successfully created.' }
        format.json { render :show, status: :created, location: @receipt }
      else
        format.html { render :edit }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end

    def destroy
      @receipt.destroy
      respond_to do |format|
        format.html { redirect_to receipt_url, notice: 'Receipt was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def receipt
      @receipt = Receipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipt_params
      params.require(:receipt).permit(:doc_url)
    end
  end
end
