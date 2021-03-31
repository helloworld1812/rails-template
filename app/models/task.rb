# == Schema Information
#
# Table name: tasks
#
#  assignee_type              :string
#  assignee_uuids             :uuid             default([]), is an Array
#  complete_return_url        :string
#  configuration_uuid         :uuid             not null
#  core_company_uuid          :uuid             not null
#  core_employee_uuid         :uuid             not null
#  core_onboarding_event_uuid :uuid             not null
#  deleted_at                 :datetime
#  role                       :string           not null
#  status                     :string
#  task_name                  :string           not null
#  uuid                       :uuid             not null, primary key
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
# Indexes
#
#  index_tasks_on_configuration_uuid          (configuration_uuid)
#  index_tasks_on_core_company_uuid           (core_company_uuid)
#  index_tasks_on_core_employee_uuid          (core_employee_uuid)
#  index_tasks_on_core_onboarding_event_uuid  (core_onboarding_event_uuid)
#
class Task < ApplicationRecord
end
