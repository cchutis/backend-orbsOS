class TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: tasks
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end

  def new
    task = Task.find(params[:id])
  end

  def create
    task = Task.create(task_params)
    render json: task
  end

  def edit
    task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    render json: task
  end

  def destroy
    task = Task.find(params[:id])
    task.delete
  end

  private

  def task_params
    params.require(:task).permit(:activity, :description)
  end

end
