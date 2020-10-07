class TasksController < ApplicationController
  def index
    # needed?
  end

  def show
    # need to check if task belongs to project?

    project_id = params[:project_id]
    task_id = params[:id]

    @task = Task.find(task_id)
  end

  def new
    project_id = params[:project_id]

    @project = Project.find(project_id)
    @task = Task.new(project_id: project_id)
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(task_params)
    @task.project = @project

    if @task.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    @project = @task.project
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to @task.project
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:content, :category_id)
  end
end
