class EntertainExpenseExplanationsController < ApplicationController
  before_action :set_entertain_expense_explanation, only: [:show, :edit, :update, :destroy]

  # GET /entertain_expense_explanations
  # GET /entertain_expense_explanations.json
  def index
    @entertain_expense_explanations = EntertainExpenseExplanation.all
  end

  # GET /entertain_expense_explanations/1
  # GET /entertain_expense_explanations/1.json
  def show
  end

  # GET /entertain_expense_explanations/new
  def new
    @entertain_expense_explanation = EntertainExpenseExplanation.new
  end

  # GET /entertain_expense_explanations/1/edit
  def edit
  end

  # POST /entertain_expense_explanations
  # POST /entertain_expense_explanations.json
  def create
    @entertain_expense_explanation = EntertainExpenseExplanation.new(entertain_expense_explanation_params)

    respond_to do |format|
      if @entertain_expense_explanation.save
        format.html { redirect_to @entertain_expense_explanation, notice: 'Entertain expense explanation was successfully created.' }
        format.json { render :show, status: :created, location: @entertain_expense_explanation }
      else
        format.html { render :new }
        format.json { render json: @entertain_expense_explanation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entertain_expense_explanations/1
  # PATCH/PUT /entertain_expense_explanations/1.json
  def update
    respond_to do |format|
      if @entertain_expense_explanation.update(entertain_expense_explanation_params)
        format.html { redirect_to @entertain_expense_explanation, notice: 'Entertain expense explanation was successfully updated.' }
        format.json { render :show, status: :ok, location: @entertain_expense_explanation }
      else
        format.html { render :edit }
        format.json { render json: @entertain_expense_explanation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entertain_expense_explanations/1
  # DELETE /entertain_expense_explanations/1.json
  def destroy
    @entertain_expense_explanation.destroy
    respond_to do |format|
      format.html { redirect_to entertain_expense_explanations_url, notice: 'Entertain expense explanation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entertain_expense_explanation
      @entertain_expense_explanation = EntertainExpenseExplanation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entertain_expense_explanation_params
      params.require(:entertain_expense_explanation).permit(:occurence, :location, :business_purpose, :person_entertained, :amount)
    end
end
