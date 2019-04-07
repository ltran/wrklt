class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update_task]

  def todo
    if search_params[:filter].present?
      persons = Person.where('name LIKE ?', search_params[:filter])
      @tasks = Task.where(person_id: persons.map{|person| person.id})
    else
      @tasks = Task.all
    end
  end

  def update_task
    @task = Task.find(task_params[:task_id])
    @task.update_attributes(completed: task_params[:completed])
  end

  private
  def task_params
    params.permit(:completed, :task_id)
  end

  def search_params
    params.permit(:utf8, :filter)
  end
end
