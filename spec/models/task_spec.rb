# == Schema Information
#
# Table name: tasks
#
#  assignee_type       :string
#  assignee_uuids      :uuid             default([]), is an Array
#  complete_return_url :string
#  configuration_uuid  :uuid             not null
#  core_company_uuid   :uuid             not null
#  core_created_at     :datetime
#  core_deleted_at     :datetime
#  core_employee_uuid  :uuid             not null
#  core_process_uuid   :uuid             not null
#  core_updated_at     :datetime
#  role                :string           not null
#  status              :string
#  task_name           :string           not null
#  uuid                :uuid             not null, primary key
#
# Indexes
#
#  index_tasks_on_configuration_uuid  (configuration_uuid)
#  index_tasks_on_core_company_uuid   (core_company_uuid)
#  index_tasks_on_core_employee_uuid  (core_employee_uuid)
#  index_tasks_on_core_process_uuid   (core_process_uuid)
#
require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
