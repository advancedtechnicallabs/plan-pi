json.extract! task, :id, :task_desc, :outline_num, :created_at, :updated_at
json.url task_url(task, format: :json)
