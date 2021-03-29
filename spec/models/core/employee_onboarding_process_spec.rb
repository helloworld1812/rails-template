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
#  index_core_employee_onboarding_processes_on_core_company_uuid   (core_company_uuid)
#  index_core_employee_onboarding_processes_on_core_employee_uuid  (core_employee_uuid)
#  index_core_employee_onboarding_processes_on_uuid                (uuid)
#
require 'rails_helper'

RSpec.describe Core::EmployeeOnboardingProcess, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
