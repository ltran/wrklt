json.extract! task, :id, :name, :person_id, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
