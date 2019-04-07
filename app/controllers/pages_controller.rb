class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update_task]

  def todo
    @tasks = Task.all
  end

  def update_task
    @task = Task.find(task_params[:task_id])
    @task.update_attributes(completed: task_params[:completed])
  end

  private
  def task_params
    params.permit(:completed, :task_id)
  end
end
