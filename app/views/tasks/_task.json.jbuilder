json.extract! task, :id, :id, :uuid, :configuration_uuid, :group_uuid, :company_uuid, :role, :status, :assignee_type, :assignee_ids, :created_at, :updated_at
json.url task_url(task, format: :json)
