class GarmentsController < ApplicationController
  before_action :set_garment, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "ivysdresses", password: "poisoni", except: :show

  add_breadcrumb "Home", :root_path

  # GET /garments
  # GET /garments.json
  def index
    @garments = Garment.all
  end

  # GET /garments/1
  # GET /garments/1.json
  def show
    @order = Order.find(@garment.order_id)

    add_breadcrumb "Orders", orders_path
    add_breadcrumb @order.order_description.to_s, order_path(@order)
    add_breadcrumb @garment.garment_description.to_s, garment_path
  end

  # GET /garments/new
  def new
    @garment = Garment.new 
    order = Order.find(params[:order_id]) 
    add_breadcrumb "Orders", orders_path
    add_breadcrumb order.order_description.to_s, order_path(order)
    add_breadcrumb "Add Garment", new_order_garment_path    
  end

  # GET /garments/1/edit
  def edit
    order = Order.find(@garment.order_id) 
    add_breadcrumb "Orders", orders_path
    add_breadcrumb order.order_description.to_s, order_path(order)
    add_breadcrumb "Edit Garment", edit_garment_path 
  end

  # POST /garments
  # POST /garments.json
  def create
    @garment = Garment.new(garment_params)

    respond_to do |format|
      if @garment.save
        format.html { redirect_to order_path(@garment.order_id) , notice: 'Garment was successfully created.' }
        format.json { render :show, status: :created, location: @garment }
      else
        format.html { render :new }
        format.json { render json: @garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garments/1
  # PATCH/PUT /garments/1.json
  def update
    respond_to do |format|
      if @garment.update(garment_params)
        format.html { redirect_to order_path(@garment.order_id), notice: 'Garment was successfully updated.' }
        format.json { render :show, status: :ok, location: @garment }
      else
        format.html { render :edit }
        format.json { render json: @garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garments/1
  # DELETE /garments/1.json
  def destroy
    @garment.destroy
    respond_to do |format|
      format.html { redirect_to order_path(@garment.order_id), notice: 'Garment was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment
      @garment = Garment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garment_params
      params.require(:garment).permit(:garment_type, :garment_description, :order_id, :bust, :under_bust, :waist, :hip_upper, :hip_lower, :bust_point, :front_length, :shoulder_to_under_bust, :back_length, :across_back, :shoulderlength, :skirt_length, :sleeve_length, :sleeve_width_upper, :sleeve_width_elbow, :sleeve_width_wrist, :pants_length, :jacket_length)
    end
end
