class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy ]

  def index
    if params[:sort_expired]
      @tasks = Task.order(expired_at: :desc)
    elsif
      if params[:search_title] != "" && params[:search_status] != ""
        @tasks = Task.where("title LIKE ?", "%#{params[:search_title]}%").where(status_id: params[:search_status])
      elsif params[:search_title] != "" && params[:search_status] == ""
        @tasks = Task.where("title LIKE ?", "%#{params[:search_title]}%")
      elsif  params[:search_title] == "" && params[:search_status] != ""
        @tasks = Task.where(status_id: params[:search_status])
      end
    else
      @tasks = Task.order(created_at: :desc)
    end
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
      if params[:back]
    else
      if @task.save
        redirect_to tasks_path, notice: "Task was successfully created."
      else
        render :new
      end
    end
  end

  def update
      if @task.update(task_params)
        redirect_to task_path(@task), notice: "Task was successfully updated."
      else
        render :edit
    end
  end

  def destroy
    @task.destroy
     redirect_to tasks_path, notice: "Task was successfully deleted."
  end

  def confirm
    @task = Task.new(task.params)
    render :new if @task.invalid?
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :content, :expired_at, :status_id)
  end
end
