class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = current_assignment.tasks.new(task_params)

    if @task.save
      redirect_to assignment_path(current_assignment), notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      redirect_to assignment_path(current_assignment), notice: "Tarea actualizada."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to assignment_path(current_assignment), notice: "Se eliminó la tarea."
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :date_on, :price)
  end

  def current_assignment
    Assignment.find(session[:current_assignment_id])
  end
end
