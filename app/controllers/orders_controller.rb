class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy, :check_for_costings]
  helper_method :check_for_costings
  http_basic_authenticate_with name: "ivysdresses", password: "poisoni", except: :index

  add_breadcrumb "Home", :root_path
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all.where(:closed => 'f').order(:due_date)

    add_breadcrumb "Orders", orders_path
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @garments = @order.garments

    add_breadcrumb "Orders", orders_path
    add_breadcrumb @order.order_description.to_s, order_path(@order)
  end

  # GET /orders/new
  def new 
    @new_order = true
    @order = Order.new
    add_breadcrumb "Orders", orders_path
    add_breadcrumb "Create Order", new_order_path
  end

  # GET /orders/1/edit
  def edit
    @edit_order = true
    add_breadcrumb "Orders", orders_path
    add_breadcrumb "Edit Order", edit_order_path
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to new_order_garment_path(@order), notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_path, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully closed.' }
      format.json { head :no_content }
    end
  end  

  def check_for_garments(order)
    @order = order
    @order.garments.any? ?  true :  false    
  end

  def check_for_costings(order)
    @order = order
    costings_in_order = []    
     if check_for_garments(@order)      
      @order.garments.each do |g|
        costings_in_order.push(g.costings.any?) 
      end
     end     
     costings_in_order.all? ? true : false
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_description, :due_date, :customer_value_index, :closed, :customer_id)
    end
end
