class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[show edit update destroy]

  def index
    @vehicles = Vehicle.all
  end

  def show
    session[:current_vehicle_id] = @vehicle.id
    @assignments = @vehicle.assignments
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
  end

  def create
    @vehicle = current_customer.vehicles.new(vehicle_params)

    if @vehicle.save
      redirect_to customer_path(current_customer), notice: "Vehicle was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @vehicle.update(vehicle_params)
      redirect_to customer_path(current_customer), notice: "Vehículo actualizado."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to customer_path(current_customer), notice: "Vehículo eliminado."
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :year, :plate, :color)
  end

  def current_customer
    Customer.find(session[:current_customer_id])
  end
end
