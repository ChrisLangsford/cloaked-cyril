class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "i", password: "l", except: :index

  add_breadcrumb "Home", :root_path

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all
    @expense = Expense.select("period_end_date, sum(habby) as habby, sum(bank_charge) as bank, sum(equipment) as equip, sum(stationery) as stat, sum(computer) as comp, sum(telephone) as tel, sum(misc_expense) as misc").group("period_end_date").limit(4).order("period_end_date")

    add_breadcrumb "Expenses", expenses_path
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new

    years =[]

    for i in (0..2) do
      years << (Time.now.year + i)
    end

    @periods = []

    years.each do |p|
      @periods << ("Feb "+p.to_s)
      @periods << ("Aug "+p.to_s)
    end

  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to expenses_path, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to expenses_path, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_path notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:period_end_date, :habby, :bank_charge, :equipment, :stationery, :computer, :telephone, :misc_expense)
    end
end
