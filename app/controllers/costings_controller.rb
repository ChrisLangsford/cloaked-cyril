class CostingsController < ApplicationController
  before_action :set_costing, only: [:show, :edit, :update, :destroy]
  before_action :set_garment, only: [:show, :new, :create, :update, :change_status]

  # GET /costings
  # GET /costings.json
  def index
    @costings = Costing.all
  end

  # GET /costings/1
  # GET /costings/1.json
  def show
    
  end

  # GET /costings/new
  def new
    @costing = Costing.new
  end

  # GET /costings/1/edit
  def edit
  end

  # POST /costings
  # POST /costings.json
  def create
    @costing = Costing.new(costing_params)

    respond_to do |format|
      if @costing.save
        format.html { redirect_to order_path(@garment.order_id), notice: 'Costing was successfully added.' }
        format.json { render :show, status: :created, location: @costing }
      else
        format.html { render :new }
        format.json { render json: @costing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costings/1
  # PATCH/PUT /costings/1.json
  def update
    respond_to do |format|
      if @costing.update(costing_params)
        format.html { redirect_to @costing, notice: 'Costing was successfully updated.' }
        format.json { render :show, status: :ok, location: @costing }
      else
        format.html { render :edit }
        format.json { render json: @costing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costings/1
  # DELETE /costings/1.json
  def destroy
    @costing.destroy
    respond_to do |format|
      format.html { redirect_to costings_url, notice: 'Costing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def change_status
    costings = @garment.costings
    costings.last.update_attribute(:cost_status, "invoice")
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costing
      @costing = Costing.find(params[:id])
    end

    def set_garment
      @garment = Garment.find(params[:garment_id])      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costing_params
      params.require(:costing).permit(:cost_date, :cost_status, :labour_cost, :fabric_cost, :acc_cost, :misc_cost, :garment_id)
    end
end
