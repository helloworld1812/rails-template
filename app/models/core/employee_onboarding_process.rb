# == Schema Information
#
# Table name: core_employee_onboarding_processes
#
#  configurations     :jsonb
#  core_company_uuid  :uuid
#  core_employee_uuid :uuid
#  deleted_at         :datetime
#  uuid               :uuid
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_core_employee_onboarding_processes_on_uuid  (uuid)
#
class Core::EmployeeOnboardingProcess < ApplicationRecord
end
