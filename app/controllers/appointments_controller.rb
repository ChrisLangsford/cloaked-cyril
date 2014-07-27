class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "i", password: "l", except: :index

  add_breadcrumb "Home", :root_path

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all.order(:date)

    add_breadcrumb "Appointments", appointments_path
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new

    add_breadcrumb "Appointments", appointments_path
    add_breadcrumb "Add Appointment", new_appointment_path
  end

  # GET /appointments/1/edit
  def edit
    add_breadcrumb "Appointments", appointments_path
    add_breadcrumb "Edit Appointment", edit_appointment_path
  end

  # POST /appointments
  # POST /appointments.json
  def create 
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        @customer = Customer.find(@appointment.customer_id)

        if @appointment.follow_up == false
        AppointmentMailer.new_appointment_email(@customer, @appointment).deliver
        end            

        format.html { redirect_to appointments_path, notice: 'Appointment was successfully created.'}
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
         @customer = Customer.find(@appointment.customer_id)

        if @appointment.follow_up == false
        AppointmentMailer.update_appointment_email(@customer, @appointment).deliver
        end

        format.html { redirect_to appointments_path, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    if @appointment.follow_up == false
       @customer = Customer.find(@appointment.customer_id)
        AppointmentMailer.cancel_appointment_email(@customer, @appointment).deliver
    end
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:date, :time, :comments, :follow_up, :customer_id)
    end
end
