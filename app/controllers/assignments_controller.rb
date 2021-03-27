class AssignmentsController < ApplicationController
  before_action :set_assignment, only: %i[ show edit update destroy ]

  def index
    @assignments = Assignment.all
  end

  def show
    session[:current_assignment_id] = @assignment.id
    @tasks = @assignment.tasks
  end

  def new
    @assignment = Assignment.new
  end

  def edit
  end

  def create
    @assignment = current_vehicle.assignments.new(assignment_params)

    if @assignment.save
      redirect_to vehicle_path(current_vehicle), notice: "Nuevo trabajo creado."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @assignment.update(assignment_params)
      redirect_to vehicle_path(current_vehicle), notice: "Trabajo actualizado."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /assignments/1 or /assignments/1.json
  def destroy
    @assignment.destroy
    redirect_to vehicle_path(current_vehicle), notice: "Trabajo eliminado."
  end

  private

  def set_assignment
    @assignment = Assignment.find(params[:id])
  end

  def assignment_params
    params.require(:assignment).permit(:description)
  end

  def current_vehicle
    Vehicle.find(session[:current_vehicle_id])
  end
end
