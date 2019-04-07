json.extract! task, :id, :name, :person_id, :created_at, :updated_at
json.url task_url(task, format: :json)
