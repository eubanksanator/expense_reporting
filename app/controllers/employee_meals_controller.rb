class EmployeeMealsController < ApplicationController
  before_action :set_employee_meal, only: [:show, :edit, :update, :destroy]

  # GET /employee_meals
  # GET /employee_meals.json
  def index
    @employee_meals = EmployeeMeal.all
  end

  # GET /employee_meals/1
  # GET /employee_meals/1.json
  def show
  end

  # GET /employee_meals/new
  def new
    @employee_meal = EmployeeMeal.new
  end

  # GET /employee_meals/1/edit
  def edit
  end

  # POST /employee_meals
  # POST /employee_meals.json
  def create
    @employee_meal = EmployeeMeal.new(employee_meal_params)

    respond_to do |format|
      if @employee_meal.save
        format.html { redirect_to @employee_meal, notice: 'Employee meal was successfully created.' }
        format.json { render :show, status: :created, location: @employee_meal }
      else
        format.html { render :new }
        format.json { render json: @employee_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_meals/1
  # PATCH/PUT /employee_meals/1.json
  def update
    respond_to do |format|
      if @employee_meal.update(employee_meal_params)
        format.html { redirect_to @employee_meal, notice: 'Employee meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_meal }
      else
        format.html { render :edit }
        format.json { render json: @employee_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_meals/1
  # DELETE /employee_meals/1.json
  def destroy
    @employee_meal.destroy
    respond_to do |format|
      format.html { redirect_to employee_meals_url, notice: 'Employee meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_meal
      @employee_meal = EmployeeMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_meal_params
      params.require(:employee_meal).permit(:occurence, :breakfast, :lunch, :dinner)
    end
end
