# == Schema Information
#
# Table name: core_tasks
#
#  assignee_type           :string
#  assignee_uuids          :uuid             default([]), is an Array
#  complete_return_url     :string
#  core_company_uuid       :uuid             not null
#  core_configuration_uuid :uuid             not null
#  core_created_at         :datetime
#  core_deleted_at         :datetime
#  core_employee_uuid      :uuid             not null
#  core_process_uuid       :uuid             not null
#  core_updated_at         :datetime
#  role                    :string           not null
#  status                  :string
#  task_name               :string           not null
#  uuid                    :uuid             not null, primary key
#
# Indexes
#
#  index_core_tasks_on_core_company_uuid        (core_company_uuid)
#  index_core_tasks_on_core_configuration_uuid  (core_configuration_uuid)
#  index_core_tasks_on_core_employee_uuid       (core_employee_uuid)
#  index_core_tasks_on_core_process_uuid        (core_process_uuid)
#
class Core::Task < ApplicationRecord
end
