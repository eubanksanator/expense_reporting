class OtherExpensesController < ApplicationController
  before_action :set_other_expense, only: [:show, :edit, :update, :destroy]

  # GET /other_expenses
  # GET /other_expenses.json
  def index
    @other_expenses = OtherExpense.all
  end

  # GET /other_expenses/1
  # GET /other_expenses/1.json
  def show
  end

  # GET /other_expenses/new
  def new
    @other_expense = OtherExpense.new
  end

  # GET /other_expenses/1/edit
  def edit
  end

  # POST /other_expenses
  # POST /other_expenses.json
  def create
    @other_expense = OtherExpense.new(other_expense_params)

    respond_to do |format|
      if @other_expense.save
        format.html { redirect_to @other_expense, notice: 'Other expense was successfully created.' }
        format.json { render :show, status: :created, location: @other_expense }
      else
        format.html { render :new }
        format.json { render json: @other_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_expenses/1
  # PATCH/PUT /other_expenses/1.json
  def update
    respond_to do |format|
      if @other_expense.update(other_expense_params)
        format.html { redirect_to @other_expense, notice: 'Other expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_expense }
      else
        format.html { render :edit }
        format.json { render json: @other_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_expenses/1
  # DELETE /other_expenses/1.json
  def destroy
    @other_expense.destroy
    respond_to do |format|
      format.html { redirect_to other_expenses_url, notice: 'Other expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_expense
      @other_expense = OtherExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_expense_params
      params.require(:other_expense).permit(:occurence, :description, :cost)
    end
end
