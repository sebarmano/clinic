class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[show edit update destroy]

  # GET /vehicles or /vehicles.json
  def index
    @vehicles = Vehicle.all
  end

  # GET /vehicles/1 or /vehicles/1.json
  def show
    session[:current_vehicle_id] = @vehicle.id
    @assignments = @vehicle.assignments
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles or /vehicles.json
  def create
    @vehicle = current_customer.vehicles.new(vehicle_params)

    if @vehicle.save
      redirect_to customer_path(current_customer), notice: "Vehicle was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicles/1 or /vehicles/1.json
  def update
    if @vehicle.update(vehicle_params)
      redirect_to customer_path(current_customer), notice: "Vehicle was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /vehicles/1 or /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: "Vehicle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :year, :plate)
  end

  def current_customer
    Customer.find(session[:current_customer_id])
  end
end
