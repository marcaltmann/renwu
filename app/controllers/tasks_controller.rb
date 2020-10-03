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
end
